LILYFILES := $(shell ls *.ly)
PDFFILES := $(LILYFILES:%.ly=%.pdf)

all: $(PDFFILES)

%.pdf : %.ly
	lilypond $<
