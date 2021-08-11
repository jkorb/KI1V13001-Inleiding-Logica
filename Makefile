SRC_DIR = lib
DST_DIR = pdf
TMP_DIR = tmp

RESOURCE_DIR =  $(SRC_DIR)/resources
RESOURCE_PATH = $(shell fd -t d . $(RESOURCE_DIR) | tr "\n" ":")

META_FILE = $(TMP_DIR)/meta.md

SLIDES_SRC_DIR = $(SRC_DIR)/slides/tex
SLIDES_SRC_FILES = $(shell fd -t f ".tex" $(SLIDES_SRC_DIR))
SLIDES_DST_DIR = $(DST_DIR)/slides
SLIDES_DST_FILES = $(patsubst $(SLIDES_SRC_DIR)/%.tex, $(SLIDES_DST_DIR)/%.pdf, $(SLIDES_SRC_FILES))
SLIDES_TEMPLATE = $(shell fd -a "slides_template.tex" $(RESOURCE_DIR))

.PHONY : all
all : slides | $(DST_DIR)

$(DST_DIR) :
	mkdir -p $(DST_DIR)

.PHONY : slides

slides : $(SLIDES_DST_FILES)

$(SLIDES_DST_DIR) :
	mkdir -p $@

$(SLIDES_DST_DIR)/%.pdf : $(SLIDES_SRC_DIR)/%.tex | $(SLIDES_DST_DIR)
	pandoc -s --resource-path="$(RESOURCE_PATH)" --template "$(SLIDES_TEMPLATE)" -o $@ $(META_FILE) $<

.PHONY : clean

clean :
	rm -rf $(DST_DIR) $(TMP_DIR)
