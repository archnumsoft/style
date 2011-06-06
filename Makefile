all:
	pdflatex paper

final:
	pdflatex paper
	bibtex paper
	pdflatex paper

clean:
	rm -f paper.bbl  paper.log  paper.pdf paper.aux  paper.blg  paper.out
