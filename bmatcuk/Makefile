SOURCE = $(wildcard *.ml)
OUTPUT = arithmetic

.PHONY: all
all: $(OUTPUT)

.PHONY: clean
clean:
	-@rm $(OUTPUT)
	-@rm $(SOURCE:.ml=.cmx)
	-@rm $(SOURCE:.ml=.cmi)
	-@rm $(SOURCE:.ml=.o)

$(OUTPUT): $(SOURCE:.ml=.cmx)
	ocamlopt -o $@ $^

%.cmx: %.ml
	ocamlopt -c $< -o $@

