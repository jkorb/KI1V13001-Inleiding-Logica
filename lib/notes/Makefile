# Make the notes...

ROOT	= ../..
SRC		= notes.tex
DST		= $(ROOT)/pdf
TARGET	= $(DST)/notes.pdf
DEPS	=  $(shell find . -type f -name "*.tex")

notes : $(TARGET)

# TODO The mv command there is really lack of knowledge...
# TODO The rm is even worse...
$(TARGET) : $(DEPS) $(SRC)
	@echo "> Compiling lecture notes (this'll take a while)..." && latexmk -silent && latexmk -silent -c

.PHONY : clean
clean :
	@rm $(TARGET)
