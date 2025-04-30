FILE=josef-jehlicka-dp-2025

all:
	pdflatex -jobname=$(FILE) main.tex
	bibtex $(FILE)

clean:
	rm -f *~ *.aux *.log *.out *.bbl *.blg *.loa *.lof \
	*.toc *.lot *.lol

distclean:
	make clean
	rm -f $(FILE).pdf
