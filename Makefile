LESSONS   = lesson1
BUILD     = build

#NOTEBOOKS = $(addprefix $(BUILD)/,$(addsuffix .ipynb,$(LESSONS)))
#SLIDES    = $(addprefix $(BUILD)/,$(addsuffix .html,$(LESSONS)))
PDFS      = $(addprefix $(BUILD)/,$(addsuffix .pdf,$(LESSONS)))

.PHONY: all pdf clean

all: pdf

pdf: $(PDFS)

$(BUILD):
	mkdir -p $(BUILD)

#$(BUILD)/%.ipynb: %.md | $(BUILD)
#	uvx jupytext --to notebook --output $@ $<

#$(BUILD)/%.html: $(BUILD)/%.ipynb
#	pandoc $< -t revealjs --standalone -o $@

$(BUILD)/%.pdf: %.md | $(BUILD)
	pandoc -t beamer -o $@ $<
#	pandoc $< -t beamer --listings -H listings.tex -o $@

clean:
	rm -rf $(BUILD)
