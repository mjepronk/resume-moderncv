# TEXFILES=$(wildcard *.tex)
# TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))

all:	matthias-pronk-en.pdf matthias-pronk-nl.pdf

cv-nl: 
	echo "\renewcommand{\cvlangflag}{nl}" > flags.tex

cv-en:
	echo "\renewcommand{\cvlangflag}{en}" > flags.tex

matthias-pronk-en.pdf: matthias-pronk.tex cv-en
	pdflatex -jobname "matthias-pronk-en" matthias-pronk.tex

matthias-pronk-nl.pdf: matthias-pronk.tex cv-nl
	pdflatex -jobname "matthias-pronk-nl" matthias-pronk.tex

matthias-pronk-en.dvi: matthias-pronk.tex cv-en
	latex -jobname "matthias-pronk-en" matthias-pronk.tex

matthias-pronk-nl.dvi: matthias-pronk.tex cv-nl
	latex -jobname "matthias-pronk-nl" matthias-pronk.tex

clean:
	rm -f *.aux *.log

mrproper: clean
	rm -f *.out *.pdf flags.tex
