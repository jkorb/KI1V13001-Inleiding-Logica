# Compile the slides

# Directories...
ROOT_DIR		= ../..
TEX_DIR			= tex

SLI_SRC			= $(TEX_DIR)
SLI_FILES		= $(shell find "$(SLI_SRC)" -type f -name "lecture*")

DST_DIR			= $(ROOT_DIR)/pdf/slides
SLI_DST			= $(patsubst $(SLI_SRC)/%.tex, $(DST_DIR)/%.pdf, $(SLI_FILES))

TEMPLATE 		= $(shell find "$(TEX_DIR)" -type f -name "template.tex")

INFO			= $(shell find "$(ROOT_DIR)" -name "info.md")

RSRC_DIR		= $(shell find "$(ROOT_DIR)" \( ! -regex '.*/\..*' \) -type d -name "resources")
export TEXINPUTS   := $(RSRC_DIR):

slides : $(SLI_DST)

$(DST_DIR)/%.pdf : $(SLI_SRC)/%.tex $(TEMPLATE) | $(DST_DIR)
	@echo "> Compiling $@..." && pandoc -s -f markdown -t pdf --template=$(TEMPLATE) "$(INFO)" $< -o $@

$(DST_DIR) :
	@mkdir -p $@

.PHONY : clean
clean :
	@echo "Cleaning up..." && rm -rf $(DST_DIR)
