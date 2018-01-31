
markdorg_FILES	= $(shell find Data -name '*.idr')

markdorg: Main.idr $(markdorg_FILES)
	idris -o markdorg Main.idr
