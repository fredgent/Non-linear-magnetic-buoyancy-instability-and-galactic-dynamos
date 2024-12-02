
#LATEX=latex
LATEX=pdflatex
BIBTEX=bibtex

default=paper.pdf

paper.pdf:paper.tex Makefile refs.bib 
	$(LATEX) paper
	$(BIBTEX) paper
	$(LATEX) paper
	$(LATEX) paper
clean:
	rm -f *.aux  *.nav *.out *.snm *.toc *.blg *.end *.log *~
pristine: clean
	rm -f *.bbl 

