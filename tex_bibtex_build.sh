# Something to automate some TeX-ing
latex "$1"
bibtex "$1"
latex "$1"
pdflatex "$1"
