# Resume site build
# Generates static site + Word and PDF exports

HUGO := hugo
PANDOC := pandoc
CONTENT := content/_index.md
STATIC := static
OUTPUT_PDF := $(STATIC)/resume.pdf
OUTPUT_DOCX := $(STATIC)/resume.docx
OUTPUT_CSS := $(STATIC)/css/resume-minimal.css

.PHONY: all build pdf docx site clean serve

all: docx pdf build

# Hugo only (no Word/PDF – use when Pandoc not installed)
site:
	$(HUGO)

# Build Word document (Pandoc required)
docx:
	@if command -v $(PANDOC) >/dev/null 2>&1; then \
		$(PANDOC) "$(CONTENT)" -o "$(OUTPUT_DOCX)" --css $(OUTPUT_CSS) && echo "Generated $(OUTPUT_DOCX)"; \
		for file in $(wildcard content/resumes/*-resume.md); do \
			mkdir -p "$(STATIC)/resumes/$$(basename $$file .md)"; \
			$(PANDOC) "$$file" -o "$(STATIC)/resumes/$$(basename $$file .md)/resume.docx" --css $(OUTPUT_CSS) && echo "Generated $$(basename $$file .md)/resume.docx"; \
		done; \
	else \
		echo "Skipping Word: Pandoc not found (brew install pandoc)"; \
	fi

# Build PDF (Pandoc + LaTeX required)
pdf:
	@if command -v $(PANDOC) >/dev/null 2>&1; then \
		$(PANDOC) "$(CONTENT)" -o "$(OUTPUT_PDF)" --css $(OUTPUT_CSS) -t html --template templates/resume-pdf.html && echo "Generated $(OUTPUT_PDF)" || \
		(echo "PDF generation failed (LaTeX required). Install: brew install --cask basictex"; brew install weasyprint; exit 0); \
		for file in $(wildcard content/resumes/*-resume.md); do \
			$(PANDOC) "$$file" -o "$(STATIC)/resumes/$$(basename $$file .md)/resume.pdf" --css $(OUTPUT_CSS) -t html --template templates/resume-pdf.html  && echo "Generated $$(basename $$file .md)/resume.pdf"; \
		done; \
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
