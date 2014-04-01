.PHONY: clean clean-all rename

MAIN = main
DIST = simone-rondelli-tesi

MAIN_EN = main-en
DIST_EN = simone-rondelli-abstract-en

dist: build rename clean

dist-en: build-en clean
	mv $(MAIN_EN).pdf $(DIST_EN).pdf

build: $(MAIN).tex city-service.tex appendix.tex mobile-app.tex simulator.tex biblio.bib intro.tex source-code-util.tex
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN).tex 
	biber $(MAIN)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN).tex

build-en: $(MAIN_EN).tex abstract-en.tex
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN_EN).tex 
	biber $(MAIN_EN)
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN_EN).tex

rename: 
	mv $(MAIN).pdf $(DIST).pdf
	
clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl *-blx.bib *.lol *.lof build/
	
clean-all: clean
	rm -f $(MAIN).pdf $(DIST).pdf
