#!/bin/bash

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material

# Convert RST files to Markdown using sphinx-doc
sphinx-build -b markdown . docs

# Build the documentation using mkdocs
mkdocs build 
