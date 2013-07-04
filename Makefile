# TEXFILES=$(wildcard *.tex)
# TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))

all:	matthias-pronk-en.pdf matthias-pronk-nl.pdf

matthias-pronk-en.pdf: matthias-pronk.tex
	echo "\renewcommand{\cvlangflag}{en}" > flags.tex
	pdflatex -jobname "matthias-pronk-en" matthias-pronk.tex

matthias-pronk-nl.pdf: matthias-pronk.tex
	echo "\renewcommand{\cvlangflag}{nl}" > flags.tex
	pdflatex -jobname "matthias-pronk-nl" matthias-pronk.tex

clean:
	rm -f *.aux *.log

mrproper: clean
	rm -f *.out *.pdf flags.tex
