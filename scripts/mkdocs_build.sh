#!/bin/bash

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material sphinx

# Convert rst files to markdown using sphinx-doc
for file in $(find docs -name "*.rst"); do
    sphinx-build -b markdown $(dirname "$file") $(dirname "$file")/$(basename "$file" .rst).md
done

# Build the mkdocs site
mkdocs build
