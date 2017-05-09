# images.mk
#
# Copyright (c) 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

ALL	+=
IMAGES	+= $(PDF) $(PNG) $(JPG)
CLEAN	+=
CLOBBER += $(PDF) $(PNG)

ASY  := ASYMPTOTE_DIR=images asy -tex pdflatex

LASY := images/badge.asy images/digraphs.asy images/graphs.asy \
	images/HalfHookHead.asy
PASY := images/Venn.asy images/badges.asy \
	images/Motzkin.asy images/triangulation.asy images/LFSR.asy \
	images/example-graphs.asy images/paths.asy \
	images/Kmn.asy images/Qn.asy \
	images/example-2switch.asy images/queso-3D.asy \
	images/chromatic1.asy images/chromatic2.asy \
	images/charlas.asy images/coins.asy images/zigzag.asy \
	images/grafo-mst.asy images/grafo-recorrer.asy \
	images/match1.asy images/match2.asy \
	images/g-hat.asy images/6cycle.asy

FASY := $(filter-out $(LASY) $(PASY),$(wildcard images/*.asy))

DIA  := $(wildcard images/*.dia)
FIG  := $(wildcard images/*.fig)
JPG  := $(wildcard images/*.jpg) $(wildcard images/*.jpeg)

PGP  := images/Bernoulli.gp
FGP  := $(filter-out $(PGP),$(wildcard images/*.gp))

DOT  := $(wildcard images/*.gv)

SET  := images/union.pdf images/interseccion.pdf images/diferencia.pdf \
	images/diferencia-simetrica.pdf images/complemento.pdf
LFSR := images/xor.pdf images/register.pdf images/LFSR-11d.pdf
MOTZ := $(foreach n,\
	  01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21,\
	  images/Motzkin-${n}.pdf)
TRIA := $(foreach n, 1 2 3 4 5, images/triangulation-$(n).pdf)
Bn   := $(foreach n,2 3 4 5 6 7 8 9 10 11 12 13,images/B$(n).pdf)
C6   := $(foreach k,1 2 3 6,images/6cycle-$(k).pdf)
CHR1 := images/chromatic1.pdf images/chromatic1-ciclo.pdf \
	images/chromatic1-coloreo.pdf
CHR2 := images/chromatic2.pdf images/chromatic2-C5.pdf \
	images/chromatic2-K4.pdf images/chromatic2-coloreo.pdf
CHL  := images/charlas.pdf images/charlas-coloreo1.pdf \
	images/charlas-coloreo2.pdf
COIN := images/coins-52.pdf images/coins-product.pdf \
	images/coins-1+5s.pdf images/coins-1x5s.pdf
CQS  := images/cubo-queso.pdf images/cubo-queso-bipartito.pdf
PTHS := $(foreach I,2 3 4 5,images/P$(I).pdf)
GRPS := $(foreach L,C K,$(foreach I,3 4 5 6,images/$(L)$(I).pdf)) \
	$(foreach I,4 5 6 7,images/W$(I).pdf) \
	images/Petersen1.pdf images/Petersen2.pdf
GXFS := images/grafo-recorrer.pdf images/grafo-recorrer-dfs.pdf \
	images/grafo-recorrer-bfs.pdf
ZZS  := images/zigzag-1.pdf images/zigzag-2.pdf
KMN  := images/K11.pdf images/K12.pdf images/K13.pdf images/K17.pdf \
	images/K22.pdf images/K23.pdf \
	images/K33.pdf images/K34.pdf images/K35.pdf
QN   := images/Q2.pdf images/Q3.pdf
SW2  := images/example-2switch-a.pdf images/example-2switch-b.pdf
MT1  := images/match-3.pdf images/match-max.pdf
MT2  := images/match-ini.pdf images/match-bca.pdf images/match-fin.pdf
MST  := images/grafo-mst.pdf \
	$(foreach S,1 2 3 4 5,$(foreach A,Prim Kruskal,\
	images/grafo-$(A)-$(S).pdf))
GHT  := images/g-hat-a.pdf images/g-hat-b.pdf
BDG  := $(foreach I,1 2 3 7,images/badge-$(I).pdf) \
	$(foreach I,a b c,images/badge-3$(I).pdf) \
	$(foreach I,a b c d e f,images/badge-5$(I).pdf) \
	$(foreach I,a b c d,images/badge-r2-$(I).pdf) \
	$(foreach I,a b c d e f,images/badge-v-$(I).pdf) \
	$(foreach I,a b c d e f,images/badge-d-$(I).pdf) \
	$(foreach I,a b c d e f g h,images/badge-$(I).pdf)

PDF  := $(SET) $(BDG) $(TLS) $(LFSR) $(MOTZ) \
	$(Bn) $(C6) $(CHR1) $(CHR2) $(CHL) $(COIN) $(CQS) $(FS) $(PTHS) \
	$(GRPS) $(GXFS) \
	$(ZZS) \
	$(KMN) $(QN) $(SW2) $(ESW2) \
	$(MT1) $(MT2) $(MST) $(GHT) \
	$(FASY:.asy=.pdf) \
	$(FIG:.fig=.pdf) \
	$(FGP:.gp=.pdf) \
	$(DOT:.gv=.pdf)

PNG  := $(DIA:.dia=.png)

%.pdf: %.asy
	$(ASY) $< -o $*

%.pdf: %.gp
	gnuplot $< > $*.pdf

%.pdf: %.gv
	neato -Tpdf $< -o $@

%.pdf: %.fig
	fig2dev -L pdf $< $@

%.png: %.dia
	dia -t png $< -e $@

# Several outputs from one source

$(SET): images/Venn.asy
	$(ASY) -globalwrite  $<

$(BDG): images/badges.asy images/badge.asy
	$(ASY) -globalwrite  $<

$(LFSR): images/LFSR.asy
	$(ASY) -globalwrite  $<

$(MOTZ): images/Motzkin.asy
	$(ASY) -globalwrite  $<

$(TRIA): images/triangulation.asy
	$(ASY) -globalwrite  $<

$(Bn): images/Bernoulli.gp
	gnuplot $<

$(C6): images/6cycle.asy
	$(ASY) -globalwrite  $<

$(CHR1): images/chromatic1.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(CHR2): images/chromatic2.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(CHL): images/charlas.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(COIN): images/coins.asy
	$(ASY) -globalwrite  $<

$(CQS): images/queso-3D.asy
	$(ASY) -globalwrite  $<

$(PTHS): images/paths.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(GRPS): images/example-graphs.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(GXFS): images/grafo-recorrer.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(ZZS): images/zigzag.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(KMN): images/Kmn.asy
	$(ASY) -globalwrite  $<

$(QN): images/Qn.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(SW2): images/example-2switch.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(MT1): images/match1.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(MT2): images/match2.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(MST): images/grafo-mst.asy images/graphs.asy
	$(ASY) -globalwrite  $<

$(GHT): images/g-hat.asy images/graphs.asy
	$(ASY) -globalwrite  $<

# Individual dependencies

images/2componentes.pdf: images/2componentes.asy images/graphs.asy
images/a6-d2.pdf: images/a6-d2.asy images/graphs.asy
images/a6-d3a.pdf: images/a6-d3a.asy images/graphs.asy
images/a6-d3b.pdf: images/a6-d3b.asy images/graphs.asy
images/a6-d3c.pdf: images/a6-d3c.asy images/graphs.asy
images/a6-d4.pdf: images/a6-d4.asy images/graphs.asy
images/a6-d5.pdf: images/a6-d5.asy images/graphs.asy
images/actividades.pdf: images/actividades.asy images/graphs.asy
images/arbol-raiz-1.pdf: images/arbol-raiz-1.asy images/graphs.asy
images/arbol-raiz-2.pdf: images/arbol-raiz-2.asy images/graphs.asy
images/automorfismo.pdf: images/automorfismo.asy images/graphs.asy
images/casita.pdf: images/casita.asy images/graphs.asy
images/comites.pdf: images/comites.asy images/graphs.asy
images/digrafo-1.pdf: images/digrafo-1.asy images/graphs.asy
images/digrafo-2.pdf: images/digrafo-2.asy images/graphs.asy
images/dodecaedro.pdf: images/dodecaedro.asy images/graphs.asy
images/Euler-formula.pdf: images/Euler-formula.asy images/graphs.asy
images/flow-network.pdf: images/flow-network.asy images/graphs.asy
images/Frucht.pdf: images/Frucht.asy images/graphs.asy
images/function-graph.pdf: images/function-graph.asy images/graphs.asy
images/gof-inyectiva.pdf: images/gof-inyectiva.asy images/graphs.asy
images/gof-sobreyectiva.pdf: images/gof-sobreyectiva.asy images/graphs.asy
images/grafo-12234.pdf: images/grafo-12234.asy images/graphs.asy
images/grafo-ejemplo.pdf: images/grafo-ejemplo.asy images/graphs.asy
images/isomorfo-a.pdf: images/isomorfo-a.asy images/graphs.asy
images/isomorfo-b.pdf: images/isomorfo-b.asy images/graphs.asy
images/monty-hall.pdf: images/monty-hall.asy images/graphs.asy
images/orbitas.pdf: images/orbitas.asy images/graphs.asy
images/puentesdeK.pdf: images/puentesdeK.asy images/graphs.asy
images/red.pdf: images/red.asy images/graphs.asy
images/red-cut.pdf: images/red-cut.asy images/graphs.asy
images/red-flujo-2.pdf: images/red-flujo-2.asy images/graphs.asy
images/red-flujo.pdf: images/red-flujo.asy images/graphs.asy
images/red-grafo.pdf: images/red-grafo.asy images/graphs.asy
images/red-residual.pdf: images/red-residual.asy images/graphs.asy
images/vestirse.pdf: images/vestirse.asy images/graphs.asy
