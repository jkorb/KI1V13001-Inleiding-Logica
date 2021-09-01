# Make the syllabus...

# Directories...
ROOT_DIR  			= $(shell git rev-parse --show-toplevel)
TMP_DIR				= $(ROOT_DIR)/tmp
MD_DIR    			= md
TEX_DIR   			= tex
DST_DIR   			= ./

# Source files...
# TODO Clean up this mess: basically, I couldn't figure out a nice way to
# include the helper 08_tas.md, which is created by configure. This works but is
# _quite_ hacky...
MD_SRC  			= $(shell find "$(MD_DIR)" -type f )
MD_TA_SRC			= $(TMP_DIR)/08_tas.md
MD_TA				= $(MD_DIR)/08_tas.md
MD_FILES			= $(shell echo $(MD_SRC) $(MD_TA))

TEMPLATE  			= $(shell find "$(TEX_DIR)" -name "template.tex")
INFO				= $(shell find "$(ROOT_DIR)" -name "info.md")

# Resources...
UU_RPT 			    =  $(shell find "$(ROOT_DIR)" \( ! -regex '.*/\..*' \) -type d -name "uureport")
export TEXINPUTS   := $(UU_RPT):



# Target...
TARGET    = $(DST_DIR)/syllabus.pdf

all : $(TARGET)

$(TARGET) : $(MD_FILES) $(TEMPLATE)
	@echo "> Compiling syllabus..." &&  pandoc -s -f markdown -t pdf --template=$(TEMPLATE) "$(INFO)" $(shell find "$(MD_DIR)" -type f | sort) -o $(TARGET)

 $(MD_TA) :
	@cp "$(MD_TA_SRC)" $@

.PHONY : clean
clean :
	@rm -rf $(TARGET) $(MD_TA)
