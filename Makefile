.PHONY: clean clean-all rename

MAIN = main

dist: build rename clean 

build: main.tex city-service.tex appendix.tex main.tex mobile-app.tex simulator.tex biblio.bib intro.tex source-code-util.tex
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 
	biber main
	pdflatex -synctex=1 -interaction=nonstopmode main.tex 

rename: 
	mv main.pdf simone-rondelli-tesi.pdf
	
clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl *-blx.bib build/
	
clean-all: clean
	rm -f $(MAIN).pdf
