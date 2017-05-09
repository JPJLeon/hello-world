# Clean.mk
#
# Copyright (c) 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

## Auxiliary operations

reindex:
	perl -i support/reindex $$(git ls-files "*.tex")

clean-ws:
	support/clean-ws $$(git ls-files)

aspell:
	for t in $$(git ls-files "*.tex"); do \
	    aspell -l es -c $$t; \
	done

.PHONY: reindex clean-ws aspell


