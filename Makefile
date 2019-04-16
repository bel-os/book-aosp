.DEFAULT_GOAL := all

# Basic Config
dir_guard=@mkdir -p $(@D)
PANDOC=pandoc
SOURCEDIR=src
SOURCES=$(wildcard $(SOURCEDIR)/*.md) $(wildcard $(SOURCEDIR)/*/*.md) $(wildcard $(SOURCEDIR)/*/*/*.md) $(wildcard $(SOURCEDIR)/*/*/*/*.md)

# HTML Site - MkDocs
MKDOCSDIR = build/html
MKDOCSSRC = $(SOURCEDIR)
MKDOCSCONF = mkdocs.yml
MKDOCSFLAGS = --config-file "$(MKDOCSCONF)"
MKDOCSTARGETS = $(MKDOCSDIR)/index.html
$(MKDOCSDIR)/index.html: $(SOURCES) $(MKDOCSCONF) $(MKDOCSSRC)/assets/fastyle.css
	$(dir_guard)
	mkdocs build $(MKDOCSFLAGS)

# Targets
all: html
html: $(MKDOCSTARGETS)

# Clean
clean: cleanhtml
cleanhtml:
	rm -rf build/html/*
