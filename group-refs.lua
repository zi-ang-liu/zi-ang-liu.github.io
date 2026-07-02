--[[
  group-refs.lua

  Runs citeproc itself, then splits the generated #refs bibliography into
  typed sections (Journal Articles / Conference Papers / Book Chapters),
  sorts each newest-first, renumbers per section, shows a count, and bolds
  the site owner's name.

  Use with `citeproc: false` so this filter owns the citation pass.
]]

local OWNER = "Liu"           -- surname as rendered by the CSL (e.g. "Z. Liu")
local info = {}               -- citekey -> { order, year, seq }

local SECTIONS = {
  { order = 1, title = "Journal Articles" },
  { order = 2, title = "Conference Papers" },
  { order = 3, title = "Book Chapters" },
}

-- CSL reference type -> section order
local function cat_of(reftype)
  reftype = (reftype or ""):lower()
  if reftype == "article-journal" or reftype == "article" then
    return 1
  elseif reftype == "paper-conference" then
    return 2
  else
    return 3 -- chapter, book, entry, ...
  end
end

local function year_of(ref)
  local iss = ref.issued
  if not iss then return 0 end
  if iss.year then return tonumber(pandoc.utils.stringify(iss.year)) or 0 end
  local dp = iss["date-parts"]
  if dp and dp[1] and dp[1][1] then
    return tonumber(pandoc.utils.stringify(dp[1][1])) or 0
  end
  return 0
end

local function build_info(doc)
  local seq = 0
  for _, ref in ipairs(pandoc.utils.references(doc)) do
    seq = seq + 1
    local id = pandoc.utils.stringify(ref.id)
    local ty = ref.type and pandoc.utils.stringify(ref.type) or ""
    info[id] = { order = cat_of(ty), year = year_of(ref), seq = seq }
  end
end

-- Bold "X. Liu" (Str "Z." Space Str "Liu[,]") inside an entry.
local function highlight_owner(block)
  return pandoc.walk_block(block, {
    Inlines = function(inlines)
      local out = pandoc.List()
      local i = 1
      while i <= #inlines do
        local a = inlines[i]
        local b = inlines[i + 1]
        local c = inlines[i + 2]
        if a.t == "Str" and a.text:match("^%u%.$")
            and b and b.t == "Space"
            and c and c.t == "Str" and c.text:match("^" .. OWNER) then
          out:insert(pandoc.Strong({ pandoc.Str(a.text), pandoc.Space(), pandoc.Str(c.text) }))
          i = i + 3
        else
          out:insert(a)
          i = i + 1
        end
      end
      return out
    end,
  })
end

-- Turn the "doi: <link>" tail into a compact "DOI" button.
local function doi_buttons(block)
  return pandoc.walk_block(block, {
    Inlines = function(inlines)
      local out = pandoc.List()
      for _, x in ipairs(inlines) do
        if x.t == "Link" and x.target:match("^https?://doi%.org/") then
          -- drop the trailing "doi:" prefix (Str "doi:" + surrounding spaces)
          while #out > 0 and (out[#out].t == "Space"
              or (out[#out].t == "Str" and out[#out].text:lower() == "doi:")) do
            out:remove(#out)
          end
          out:insert(pandoc.Space())
          out:insert(pandoc.Link({ pandoc.Str("DOI") }, x.target, "",
            pandoc.Attr("", { "doi-btn" }, { target = "_blank", rel = "noopener" })))
        else
          out:insert(x)
        end
      end
      return out
    end,
  })
end

-- Replace the leading "[n]" label (an inline Str) with the section-local number.
local function renumber(block, n)
  local done = false
  return pandoc.walk_block(block, {
    Str = function(s)
      if not done and s.text:match("^%[%d+%]$") then
        done = true
        return pandoc.Str("[" .. n .. "]")
      end
    end,
  })
end

local function transform_refs(el)
  local buckets = { {}, {}, {} }
  for _, blk in ipairs(el.content) do
    if blk.t == "Div" and blk.identifier:match("^ref%-") then
      local key = blk.identifier:gsub("^ref%-", "")
      local meta = info[key] or { order = 3, year = 0, seq = 0 }
      table.insert(buckets[meta.order], { block = blk, meta = meta })
    end
  end

  for _, items in ipairs(buckets) do
    table.sort(items, function(a, b)
      if a.meta.year ~= b.meta.year then return a.meta.year > b.meta.year end
      return a.meta.seq < b.meta.seq
    end)
  end

  local out = pandoc.List()
  for _, sec in ipairs(SECTIONS) do
    local items = buckets[sec.order]
    if #items > 0 then
      out:insert(pandoc.Header(3, {
        pandoc.Str(sec.title),
        pandoc.Space(),
        pandoc.Span({ pandoc.Str("(" .. #items .. ")") }, pandoc.Attr("", { "pub-count" })),
      }))
      local body = pandoc.List()
      for i, item in ipairs(items) do
        body:insert(doi_buttons(highlight_owner(renumber(item.block, i))))
      end
      out:insert(pandoc.Div(body, pandoc.Attr("", { "references", "csl-bib-body" })))
    end
  end
  return out
end

function Pandoc(doc)
  build_info(doc)
  doc = pandoc.utils.citeproc(doc)
  local blocks = pandoc.List()
  for _, blk in ipairs(doc.blocks) do
    if blk.t == "Div" and blk.identifier == "refs" then
      blocks:extend(transform_refs(blk))
    else
      blocks:insert(blk)
    end
  end
  doc.blocks = blocks
  return doc
end
