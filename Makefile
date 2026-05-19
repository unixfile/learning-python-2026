LESSON_MDS   = $(filter-out %-notebook.md,$(wildcard lesson*.md))
NOTEBOOK_MDS = $(wildcard lesson*-notebook.md)
DATA         = $(wildcard *.txt)

BUILD     = build
PDFS      = $(patsubst %.md,$(BUILD)/%.pdf,$(LESSON_MDS))
NOTEBOOKS = $(patsubst %-notebook.md,$(BUILD)/%.ipynb,$(NOTEBOOK_MDS))
DATA_OUT  = $(addprefix $(BUILD)/,$(DATA))

.PHONY: all pdf notebooks clean

all: pdf notebooks

pdf: $(PDFS)

notebooks: $(NOTEBOOKS) $(DATA_OUT)

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/%.pdf: %.md | $(BUILD)
	pandoc -t beamer --slide-level=1 -o $@ $<

$(BUILD)/%.ipynb: %-notebook.md | $(BUILD)
	uvx jupytext --to notebook --output $@ $<

$(BUILD)/%.txt: %.txt | $(BUILD)
	cp $< $@

clean:
	rm -rf $(BUILD)
