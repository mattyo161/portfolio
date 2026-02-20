# Resume site build
# Generates static site + Word and PDF exports

HUGO := hugo
PANDOC := pandoc
CONTENT := content/_index.md
STATIC := static
OUTPUT_PDF := $(STATIC)/resume.pdf
OUTPUT_DOCX := $(STATIC)/resume.docx

.PHONY: all build pdf docx site clean serve

all: docx pdf build

# Hugo only (no Word/PDF – use when Pandoc not installed)
site:
	$(HUGO)

# Build Word document (Pandoc required)
docx:
	@if command -v $(PANDOC) >/dev/null 2>&1; then \
		$(PANDOC) "$(CONTENT)" -o "$(OUTPUT_DOCX)" && echo "Generated $(OUTPUT_DOCX)"; \
	else \
		echo "Skipping Word: Pandoc not found (brew install pandoc)"; \
	fi

# Build PDF (Pandoc + LaTeX required)
pdf:
	@if command -v $(PANDOC) >/dev/null 2>&1; then \
		$(PANDOC) "$(CONTENT)" -o "$(OUTPUT_PDF)" && echo "Generated $(OUTPUT_PDF)" || \
		(echo "PDF generation failed (LaTeX required). Install: brew install --cask basictex"; exit 0); \
	else \
		echo "Skipping PDF: Pandoc not found (brew install pandoc)"; \
	fi

# Build Hugo site (with Word/PDF if Pandoc available)
build:
	-$(MAKE) docx
	-$(MAKE) pdf
	$(HUGO)
	@echo "Site built in public/"

# Run dev server
serve:
	$(HUGO) server -D

clean:
	rm -rf public/
	rm -f $(OUTPUT_PDF) $(OUTPUT_DOCX)
