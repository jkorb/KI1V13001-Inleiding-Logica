# Make the notes...

ROOT	= ../..
SRC		= notes.tex
DST		= $(ROOT)/pdf
TARGET	= $(DST)/notes.pdf
DEPS	=  $(shell find . -type f -name "*.tex")

TOP_LVL				= $(shell git rev-parse --show-toplevel)
export UU_CLS      = $(shell find "$(TOP_LVL)" \( ! -regex '.*/\..*' \) -type d -wholename "*/uucls/lib/classes")
export UU_RESOURCE = $(shell find "$(TOP_LVL)" \( ! -regex '.*/\..*' \) -type d -wholename "*/uucls/lib/resources")

export TEXINPUTS := $(UU_CLS):$(UU_RESOURCE):

notes : $(TARGET)

# TODO The mv command there is really lack of knowledge...
# TODO The rm is even worse...
$(TARGET) : $(DEPS) $(SRC)
	@echo "> Compiling lecture notes (this'll take a while)..." && latexmk -silent && latexmk -silent -c

.PHONY : clean
clean :
	@rm $(TARGET)
