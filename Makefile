.PHONY: clean clean-all

MAIN = main

clean:
	rm -f *.log *.out *.dvi *.aux
	
distclean: clean
	rm -f *.pdf
