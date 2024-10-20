#!/bin/bash

sudo sh -c 'apt update && apt install pandoc'

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material

# Convert RST files to Markdown using pandoc
find . -name "*.rst" -exec sh -c 'pandoc "$0" -o "docs/${0%.rst}.md"' {} \;

# Build the documentation using mkdocs
mkdocs build
