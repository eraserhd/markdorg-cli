
prefix		= /usr/local
markdorg_FILES	= $(shell find Data -name '*.idr')

markdorg: Main.idr $(markdorg_FILES)
	idris -o markdorg Main.idr

install: markdorg
	install -m 755 markdorg $(prefix)/bin/

.PHONY: install
