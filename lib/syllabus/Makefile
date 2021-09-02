# Make the syllabus...

# Directories...
ROOT_DIR  			= $(shell git rev-parse --show-toplevel)
TMP_DIR				= $(ROOT_DIR)/tmp
MD_DIR    			= md
TEX_DIR   			= tex
DST_DIR   			= ./

# Source files...
MD_FILES  			= $(shell find "$(MD_DIR)" -type f | sort)

TEMPLATE  			= $(shell find "$(TEX_DIR)" -name "template.tex")
INFO				= $(shell find "$(ROOT_DIR)" -name "info.md")

# Resources...
UU_RPT 			    =  $(shell find "$(ROOT_DIR)" \( ! -regex '.*/\..*' \) -type d -name "uureport")
export TEXINPUTS   := $(UU_RPT):

# Target...
TARGET    = $(DST_DIR)/syllabus.pdf

all : $(TARGET)

$(TARGET) : $(MD_FILES) $(TEMPLATE)
	@echo "> Compiling syllabus..." &&  pandoc -s -f markdown -t pdf --template=$(TEMPLATE) "$(INFO)" $(MD_FILES) -o $(TARGET)

.PHONY : clean
clean :
	@rm -rf $(TARGET) $(MD_TA)
