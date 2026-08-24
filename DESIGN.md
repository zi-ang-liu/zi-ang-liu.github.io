# Design notes

Rules for composing pages on this site.

This file covers what the SCSS cannot: how a page opens, what order its sections
go in, which component to reach for, and when to leave something out. Why a
given component looks the way it does is documented where it is defined —
`scss/_shared.scss`, whose header states the token contract both this site and
the lab site are written against.

Written in English because every other comment in this repo is.

## 1. Page shapes

**Home (`index.qmd`).** Hero → About → News → Research Group.

The hero owns identity: name, role, affiliation, email, profile links. It is the
only place those appear.

**Every other page** opens with one or two sentences before the first `##`. No
exceptions — a reader who lands on a bare `## 学部` or a bare card grid has to
infer what the page is. One sentence is enough.

**Every section ends with somewhere to go.** `.info-link` row, a button, or a
listing that links onward. A section that just stops is a dead end.

## 2. Do not say it twice

This is the rule the home page kept breaking.

- **The hero owns the identity.** Prose below it must not restate the name, the
  title, or the department. `About` used to open with "I am an Associate
  Professor of Industrial and Systems Engineering at Hosei University" directly
  under a hero saying exactly that.
- **One destination, one route per screen.** The lab was previously linked from
  the About row, from its own section heading, and from two buttons inside that
  section — four routes to one page.
- **Across pages: summary, then detail, never the same words.** The three
  research directions get one line each on `index.qmd` and a paragraph each on
  `research.qmd`. The lab site splits its home-page cards from its research
  sub-pages the same way.
- **A profile pill row has to be about its page.** Four pages carried one, and
  three of them were the same row: Google Scholar, ORCID and researchmap each
  appeared three times, GitHub three times counting the navbar icon that every
  page already has. The test is whether the links are the page's *subject*, not
  whether they are useful — they are always useful, which is why the row
  spreads. What each row is for now:

  | Page | Row | Because |
  |---|---|---|
  | `index.qmd` | Google Scholar · researchmap | The hero owns the identity. GitHub is not here — the navbar has it |
  | `publications.qmd` | Scholar · Semantic Scholar · ORCID · researchmap · ResearchGate | The same publication list, seen elsewhere. This row *is* the page |
  | `research.qmd` | KAKEN profile | The funded projects, on the funder's own database |
  | `cv.qmd` | email | How to reach the person whose CV it is |

  The footer was the other candidate for a consolidated row and was rejected:
  it holds reference information you go looking for (the postal address), and a
  link row there would not have removed the row on `publications.qmd` — it would
  have been a fourth route to Google Scholar rather than a replacement.

## 3. Components

| Class | Use for | Watch out |
|---|---|---|
| `.hero` + `.hero-*` | Home identity block | `.hero-links` is a sibling of `.hero-content`, not a child — as a child it wraps onto two rows |
| `.news-list`, `.cv-list` | Dated rows | Label goes in `.news-date` / `.cv-when`; keep date granularity consistent within a list |
| `.info-link` | Inline routing row closing a section | Separate with ` · ` |
| `.profile-links` / `.profile-link` | Pill row of external profiles | One row per page at most, and only where the links *are* the page's subject — see §2. The email pill takes no inline `<i>`; its icon comes from `.profile-link.email::before` |
| `.project-grid` / `.project-card` | Funded projects, whole card clickable | Add `.project-img` only when there is a real, distinct figure — not stock art |
| `.course-list` + `.course-term` / `.course-name` / `.course-meta` | Taught courses | Same row device as `.news-list`; the term is the left label. A course with published notes gets an `<a>` for its `.course-name`, and the link colour is the whole affordance |
| `.period-grid` / `.period` | Class-period strip | One object with hairline dividers, not five cells — the dividers are grid gaps, so the strip must never wrap |
| `.book-links` / `.book-item` | Lecture-note links | Items must be consecutive lines with no blank line between them — `.book-links p` *is* the row |
| `.chip` | Attribute label, never a link | Prefer `@include chip($fg)` in SCSS over a lookalike |
| `@include pill` | Standalone outlined link (`.profile-link`, `.book-item`) | Same — don't hand-roll a third shape between chip and pill |
| `div.quarto-post` | Blog listing | Styled, not hand-written — leave `blog.qmd` as a `type: default` listing |

Hand-written card grids are for content that is genuinely static. Anything
chronological should be a Quarto listing so it cannot go stale.

**Reach for a row before a card.** The teaching page was two card grids, a strip
of five boxes and five more link cards — fourteen outlined boxes and sixteen
chips for six courses and five links. A card earns its border when the entries
differ in shape or length (the funded projects do: a title, a translation, a
grant number). A short uniform list of facts does not; it wants the
`.news-list` row, where the hairlines carry the structure and nothing has to be
outlined.

Colour follows the same rule. Indigo is the site's one hue — the teal/amber
semester chips were the exception, and they coded a distinction (spring vs
autumn) that no reader has to compare at a glance. If a colour is not carrying
information the reader actually uses, it is decoration; make it `$muted-color`.

## 4. Markdown and Quarto traps

Each of these has actually broken this site or the lab site.

- **Do not indent raw HTML.** Four spaces makes it a code block and the tags show
  up on the page.
- **Keep a card's `<a>` on one line.** Split across lines, Pandoc reparses it as
  Markdown and emits a stray empty `<a>`.
- **Pandoc wraps consecutive inline elements in a `<p>`.** Sometimes that is what
  you want (`.book-links p` is the grid); sometimes it has to be dissolved with
  `> p { display: contents }`. Check which before adding a grid or flex parent.
- **A line break needs a trailing `\`.** A bare newline is joined.
- **Assets referenced only from SCSS** need adding to `resources:` in
  `_quarto.yml` — Quarto's link scanner cannot see them.
- **`quarto render a.qmd b.qmd` does not render both.** Pass one file, or none.

## 5. Language

English by default. Japanese only where the reader is Japanese — currently just
`teaching.qmd`. Do not mirror the whole site in two languages.

Japanese pages set `lang: ja` in their front matter, otherwise they inherit the
site's `lang="en"`.

**Japanese punctuation: full-width 「，」 and 「．」, never 「、」 and 「。」.** This
matches the lab site's `STYLE.md` and the convention of Japanese engineering
journals. Exceptions stay half-width: code, URLs, English sentences, decimals,
and — importantly — YAML list separators, where a full-width `，` silently turns
`[a，b]` into one item.

## 6. Relationship to the lab site

`isl-hosei.github.io` and this site share a token vocabulary and the `chip`
device, and their `scss/_shared.scss` files have the same shape. They are
deliberately *not* the same design: different brand hue, different audience,
different components.

- **When the two disagree on a name, the lab site is the reference.**
- Values stay independent: indigo here, cyan there.
- The favicons are built the same way — SVG source, `_tools/make-favicon.sh`
  generating the `.ico` and `apple-touch-icon.png` — and are deliberately
  different marks: initials here, because a personal site is a person; the
  lab's hero figure there, because a lab is its subject. Sharing the rounded
  tile is enough family resemblance; sharing the mark would not be.
- `$muted-color` went the other way — it started here, for a measured contrast
  reason, and the lab site adopted it.

Do not unify the page components. A lab site and a personal academic site should
not look like the same object; the footer already links them.
