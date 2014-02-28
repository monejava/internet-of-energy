.PHONY: clean clean-all

MAIN = main

build: main.tex
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 
	biber main
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 

clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl build/
	
clean-all: clean
	rm -f $(MAIN).pdf
