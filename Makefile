LESSONS   = lesson1
BUILD     = build
PDFS      = $(addprefix $(BUILD)/,$(addsuffix .pdf,$(LESSONS)))
NOTEBOOKS = $(LESSONS:%=%.ipynb)

.PHONY: all pdf notebooks clean

all: pdf notebooks

pdf: $(PDFS)

notebooks: $(NOTEBOOKS)

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/%.pdf: %.md | $(BUILD)
	pandoc -t beamer -o $@ $<

%.ipynb: %-notebook.md
	uvx jupytext --to notebook --output $@ $<

clean:
	rm -rf $(BUILD)
	rm -f $(NOTEBOOKS)
