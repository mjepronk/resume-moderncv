TEXFILES=$(wildcard *.tex)
TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))

all: $(TARGETS)

clean:
	rm -f *.aux *.log

%.pdf: %.tex
	pdflatex $<
