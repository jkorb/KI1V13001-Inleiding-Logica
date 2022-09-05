# Compile the slides

# Directories...
ROOT_DIR		= ../..
TEX_DIR			= tex
MD_DIR      = md

DST_DIR			= $(ROOT_DIR)/pdf/slides

DST_DIR_1   = $(DST_DIR)/part-1
DST_DIR_2   = $(DST_DIR)/part-2

TEX_SRC			= $(TEX_DIR)
TEX_FILES		= $(shell find "$(TEX_SRC)" -type f -name "lecture*")

MD_SRC			= $(MD_DIR)
MD_FILES		= $(shell find "$(MD_SRC)" -type f -name "lecture*")

SLI_DST_1   = $(patsubst $(MD_SRC)/%.md, $(DST_DIR_1)/%.pdf, $(MD_FILES))
SLI_DST_2 	= $(patsubst $(TEX_SRC)/%.tex, $(DST_DIR_2)/%.pdf, $(TEX_FILES))

TEMPLATE 		= $(shell find "$(TEX_DIR)" -type f -name "template.tex")

INFO			  = $(shell find "$(ROOT_DIR)" -name "info.md")

RSRC_DIR		= $(shell find "$(ROOT_DIR)" \( ! -regex '.*/\..*' \) -type d -name "resources")

export TEXINPUTS   := $(RSRC_DIR):

slides: $(SLI_DST_1) $(SLI_DST_2)

$(DST_DIR) :
	@mkdir -p $@

$(DST_DIR_1) : $(DST_DIR)
	@mkdir -p $@

$(DST_DIR_2) : $(DST_DIR)
	@mkdir -p $@

$(DST_DIR_1)/%.pdf : $(MD_SRC)/%.md $(TEMPLATE) | $(DST_DIR_1)
	@echo "> Compiling $@..." && pandoc -s -f markdown -t beamer --template=$(TEMPLATE) "$(INFO)" $< -o $@

$(DST_DIR_2)/%.pdf : $(TEX_SRC)/%.tex $(TEMPLATE) | $(DST_DIR_2)
	@echo "> Compiling $@..." && pandoc -s -f markdown -t pdf --template=$(TEMPLATE) "$(INFO)" $< -o $@

.PHONY : clean
clean :
	@echo "Cleaning up..." && rm -rf $(DST_DIR)
