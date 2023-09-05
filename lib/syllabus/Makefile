# Make the syllabus...

# Directories...
ROOT_DIR  			= ../../
TMP_DIR				= $(ROOT_DIR)/tmp
MD_DIR    			= md
TEX_DIR   			= tex
DST_DIR   			= $(ROOT_DIR)/pdf

# Source files...
MD_FILES  			= $(shell find "$(MD_DIR)" -type f | sort)

TEMPLATE  			= $(shell find "$(TEX_DIR)" -name "template.tex")
INFO				= $(shell find "$(ROOT_DIR)" -name "info.md")

# Resources...
TOP_LVL				= $(shell git rev-parse --show-toplevel)
export UU_CLS      = $(shell find "$(TOP_LVL)" \( ! -regex '.*/\..*' \) -type d -wholename "*/uucls/lib/classes")
export UU_RESOURCE = $(shell find "$(TOP_LVL)" \( ! -regex '.*/\..*' \) -type d -wholename "*/uucls/lib/resources")

export TEXINPUTS := $(UU_CLS):$(UU_RESOURCE):

# Target...
TARGET    = $(DST_DIR)/syllabus.pdf

syllabus : $(TARGET)

$(TARGET) : $(MD_FILES) $(TEMPLATE)
	@echo "> Compiling syllabus..." &&  pandoc -s -f markdown -t pdf --template=$(TEMPLATE) "$(INFO)" $(MD_FILES) -o $(TARGET)

.PHONY : clean
clean :
	@rm -rf $(TARGET) $(MD_TA)
