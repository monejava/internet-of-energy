.PHONY: clean clean-all rename

MAIN = main

dist: build 

build: main.tex
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 
	biber main
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 

rename: 
	mv main.pdf simone-rondelli-tesi.pdf
	
clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl build/
	
clean-all: clean
	rm -f $(MAIN).pdf
