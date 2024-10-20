#!/bin/bash

set -x

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

conda install -c conda-forge pandoc

# Install mkdocs and mkdocs-material
pip install mkdocs mkdocs-material

# Convert RST files to Markdown using pandoc
find . -name "*.rst" -exec sh -c 'pandoc "$0" -o "docs/${0%.rst}.md"' {} \;

# Build the documentation using mkdocs
mkdocs build
