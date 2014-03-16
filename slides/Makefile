.PHONY: clean clean-all rename

MAIN = slides
DIST = simone-rondelli-slides

dist: build rename clean 

build: $(MAIN).tex 
	pdflatex -synctex=1 -interaction=nonstopmode $(MAIN).tex 

rename: 
	mv $(MAIN).pdf $(DIST).pdf
	
clean:
	rm -Rf *.log *.out *.dvi *.aux *.toc *.synctex.gz *.blg *.bcf *.run.xml *.bbl *-blx.bib *.lol *.lof *.nav *.snm build/
	
clean-all: clean
	rm -f $(MAIN).pdf $(DIST).pdf
