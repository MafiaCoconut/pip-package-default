SHELL := /bin/bash
.PHONY: run


PACKAGE_NAME := pip-package-default
PACKAGE_TAG  := 0.1.0



build:
	@echo "🔧 Building the Monstrino Service pip package..."
	python -m build
	@echo "✅ Pip package built successfully."

tag:
	@echo "🏷️  Tagging the current version in git..."
	git tag -a v$(PACKAGE_TAG) -m "Release version $(PACKAGE_TAG)"
	git push origin v$(PACKAGE_TAG) --tags
	@echo "✅ Tagged and pushed version $(PACKAGE_TAG) to git."
