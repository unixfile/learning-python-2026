LESSONS = lesson1
BUILD   = build
PDFS    = $(addprefix $(BUILD)/,$(addsuffix .pdf,$(LESSONS)))

.PHONY: all pdf release clean

all: pdf

pdf: $(PDFS)

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/%.pdf: %.md | $(BUILD)
	pandoc -t beamer -o $@ $<

release: all
	git add $(PDFS) $(LESSONS:%=%.md) $(LESSONS:%=%.ipynb) README.md Makefile
	git diff --cached --quiet || git commit -m "Update lesson materials"
	. ~/creds/tokens && git push

clean:
	rm -rf $(BUILD)
