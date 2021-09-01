# Glorious makefile for the entire course. Make it so!

# Base directories
SRC_DIR   = lib
SYL_DIR   = $(SRC_DIR)/syllabus
RSRC_DIR  = resources
DST_DIR   = pdf

export TMP_DIR  = $(CURDIR)/tmp
export INFO     = "$(TMP_DIR)/info.md"

# My uureport class for corporate identity purposes...
export UU_RPT    = $(shell find "$(CURDIR)" \( ! -regex '.*/\..*' \) -type d -name "uureport")
export TEXINPUTS := $(UU_RPT):

# Here we go...
.PHONY : all
all : syllabus

$(DST_DIR) :
	@mkdir -p $@

.PHONY : syllabus

syllabus : | $(DST_DIR)
	@$(MAKE) --no-print-directory -C "$(SYL_DIR)/" && mv "$(SYL_DIR)/syllabus.pdf" $(DST_DIR)/

.PHONY : clean
clean :
	@echo "Cleaning up..." && rm -rf $(DST_DIR) $(TMP_DIR)
