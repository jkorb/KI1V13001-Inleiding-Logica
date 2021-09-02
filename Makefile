# Glorious makefile for the entire course. Make it so!

# Base directories
SRC_DIR   = lib

SYL_SRC   = $(SRC_DIR)/syllabus
SLI_SRC   = $(SRC_DIR)/slides

# RSRC_DIR  = resources

DST_DIR   = pdf

export TMP_DIR  = $(CURDIR)/tmp
export INFO     = "$(TMP_DIR)/info.md"

# My uureport class for corporate identity purposes...
export UU_RPT    = $(shell find "$(CURDIR)" \( ! -regex '.*/\..*' \) -type d -name "uureport")
export TEXINPUTS := $(UU_RPT):

# Here we go...
.PHONY : all
all : syllabus slides
	@echo "Done!"

$(DST_DIR) :
	@mkdir -p $@

.PHONY : syllabus
syllabus : | $(DST_DIR)
	@$(MAKE) --no-print-directory -C "$(SYL_SRC)/" && mv "$(SYL_SRC)/syllabus.pdf" $(DST_DIR)

.PHONY : slides
slides : | $(DST_DIR) $(SLI_DST)
	@$(MAKE) --no-print-directory -C "$(SLI_SRC)" && mv "$(SLI_SRC)/slides" $(DST_DIR)

.PHONY : clean
clean :
	@echo "Cleaning up..." && rm -rf $(DST_DIR) $(TMP_DIR)