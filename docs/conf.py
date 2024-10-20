# Configuration file for the Sphinx documentation builder.

# -- Project information -----------------------------------------------------

project = 'SOPS'
copyright = '2023, Mozilla'
author = 'Mozilla'

# -- General configuration ---------------------------------------------------

extensions = [
    'recommonmark',
    'sphinx_markdown_builder',
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------

html_theme = 'alabaster'
html_static_path = ['_static']

# -- Options for Markdown output ---------------------------------------------

markdown_output = 'docs/_build'
