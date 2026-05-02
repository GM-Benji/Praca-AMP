MAIN_FILE = Architektura_AMP

all: sololetters xelatex

xelatex : clean
	xelatex $(MAIN_FILE)
	biber $(MAIN_FILE)
	makeglossaries $(MAIN_FILE)
	xelatex $(MAIN_FILE)
	xelatex $(MAIN_FILE)

pdflatex : clean
	pdflatex $(MAIN_FILE)
	biber $(MAIN_FILE)
	makeglossaries $(MAIN_FILE)
	pdflatex $(MAIN_FILE)
	pdflatex $(MAIN_FILE)
	
sololetters:
	sed -i 's/ a / a\~/g' tekst/*.tex
	sed -i 's/ i / i\~/g' tekst/*.tex
	sed -i 's/ w / w\~/g' tekst/*.tex
	sed -i 's/ z / z\~/g' tekst/*.tex
	sed -i 's/ u / u\~/g' tekst/*.tex
	sed -i 's/ o / o\~/g' tekst/*.tex
	sed -i 's/ A / A\~/g' tekst/*.tex
	sed -i 's/ I / I\~/g' tekst/*.tex
	sed -i 's/ W / W\~/g' tekst/*.tex
	sed -i 's/ Z / Z\~/g' tekst/*.tex
	sed -i 's/ U / U\~/g' tekst/*.tex
	sed -i 's/ O / O\~/g' tekst/*.tex

clean :
	-rm -f *.acn *.app *.aux *.bbl *.blg *.bcf *.glo *.ist *.lof *.log *.lot *.out *.pdf *.run.xml *.slo *.toc