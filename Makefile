
prefix		= /usr/local
markdorg_FILES	= $(shell find Text -name '*.idr')

markdorg: Main.idr $(markdorg_FILES)
	idris -p contrib -o markdorg Main.idr

install: markdorg
	install -m 755 markdorg $(prefix)/bin/

.PHONY: install
