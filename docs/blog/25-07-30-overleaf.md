# Overleaf

## Overleafで日本語を使う

https://ja.overleaf.com/learn/latex/Japanese

### pLaTeXを使う

論文のテンプレートが`pLaTeX`を使っている場合、以下のように設定する。

1. Menu > Compile > LaTeX を選択する。
2. 「latexmkrc」ファイルを作成し、以下の内容を記述する。

```perl
$latex = 'platex';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
```