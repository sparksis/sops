#!/bin/bash

set -x

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -bu
./miniforge3/bin/conda install -c conda-forge pandoc

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material

# Convert RST files to Markdown using pandoc
find . -name "*.rst" -exec sh -c './miniforge3/bin/pandoc "$0" -o "docs/${0%.rst}.md"' {} \;

# Build the documentation using mkdocs
mkdocs build
