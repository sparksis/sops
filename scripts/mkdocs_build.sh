#!/bin/bash

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material

# Convert RST files to Markdown using pandoc
find . -name "*.rst" -exec sh -c 'pandoc "$0" -o "${0%.rst}.md"' {} \;

# Build the documentation using mkdocs
mkdocs build 
