.PHONY: clean clean-all rename

MAIN = main
DIST = simone-rondelli-tesi

dist: build rename clean 

build: $(MAIN).tex city-service.tex appendix.tex mobile-app.tex simulator.tex biblio.bib intro.tex source-code-util.tex
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN).tex 
	biber $(MAIN)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN).tex 

rename: 
	mv $(MAIN).pdf $(DIST).pdf
	
clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl *-blx.bib *.lol *.lof build/
	
clean-all: clean
	rm -f $(MAIN).pdf $(DIST).pdf
