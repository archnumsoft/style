all:
	pdflatex paper

final:
	pdflatex paper
	bibtex paper
	pdflatex paper
