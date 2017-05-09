# Makefile
#
# Copyright (c) 2008-2010, 2012-2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

MAINS	:= clases.tex abstracts.tex torpedo.tex sigil.tex biblio.tex
CLASSES := $(filter-out $(MAINS) class-version.tex,$(wildcard *.tex))
BIBLIOGRAPHIES := $(wildcard *.bib)

ALL	+= $(MAINS:.tex=.pdf)
INPUTS	+= $(CLASSES) $(BIBLIOGRAPHIES)
IMAGES	+=
CLEAN	+= $(CLASSES:.tex=.aux) \
	   $(MAINS:.tex=.aux) $(MAINS:.tex=.log) $(MAINS:.tex=.out) \
	   clases.bbl clases.blg \
	   clases.idx clases.ind \
	   clases.gls clases.glo \
	   clases.loa clases.lof clases.lol clases.lot clases.toc \
	   abstracts.aux abstracts.log abstracts.bbl abstracts.blg \
	   abstracts.log abstracts.out \
	   sigil.bbl sigil.blg \
	   biblio.bbl biblio.blg \
	   CREDITS.xml README.xml
CLOBBER += $(MAINS:.tex=.pdf) \
	   abstracts.pdf \
	   biblio.pdf \
	   CREDITS.pdf CREDITS.html README.pdf README.html \
	   CLASS-VERSION-FILE class-version.tex

all: $(ALL)

images: $(IMAGES)

include images/images.mk
include code/code.mk

credits: CREDITS.pdf CREDITS.html

CREDITS.pdf: CREDITS
	asciidoc -b docbook CREDITS
	xmlto pdf CREDITS.xml

CREDITS.html: CREDITS
	asciidoc CREDITS

readme: README.pdf README.html

README.pdf: README
	asciidoc -b docbook README
	xmlto pdf README.xml

README.html: README
	asciidoc README

clases.pdf: clases.tex class-version.tex $(IMAGES) $(INPUTS)
	pdflatex $<
	BIBINPUTS=. bibtex $(basename $<)
	makeindex -s headings.ist $(basename $<).idx
	makeindex -s basic.gst -o $(basename $<).gls $(basename $<).glo
	pdflatex $<
	pdflatex $<

torpedo.pdf: torpedo.tex class-version.tex
	pdflatex $<
	pdflatex $<

sigil.pdf: sigil.tex necronomicon.bib images/necronomicon.pdf
	pdflatex $<
	BIBINPUTS=. bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

CLASS-VERSION-FILE: FORCE
	@./CLASS-VERSION-GEN
-include CLASS-VERSION-FILE

CLASS_TARNAME = Fundamentos-$(CLASS_VERSION)
dist: CLASS-VERSION-FILE
	@rm -rf $(CLASS_TARNAME) $(CLASS_TARNAME).tar $(CLASS_TARNAME).tar.gz
	git archive --format=tar \
	    --prefix=$(CLASS_TARNAME)/ HEAD^{tree} > $(CLASS_TARNAME).tar
	@mkdir -p $(CLASS_TARNAME)
	@echo $(CLASS_VERSION) > $(CLASS_TARNAME)/version
	@tar rf $(CLASS_TARNAME).tar $(CLASS_TARNAME)/version
	@rm -rf $(CLASS_TARNAME)
	@gzip -9 $(CLASS_TARNAME).tar

biblio.pdf: biblio.tex class-version.tex $(BIBLIOGRAPHIES)
	pdflatex $<
	BIBINPUTS=. bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

abstracts.pdf: abstracts.tex class-version.tex $(BIBLIOGRAPHIES)
	pdflatex $<
	BIBINPUTS=. bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

abstracts.tex: support/abstracts-head.tex support/abstracts-tail.tex \
	       support/do-abstracts \
	       clases.tex $(CLASSES)
	perl support/do-abstracts

clean:
	rm -f $(CLEAN)

clobber: clean
	rm -f $(CLOBBER)

.PHONY: all images credits readme dist clean clobber FORCE
