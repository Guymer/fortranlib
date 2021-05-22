# NOTE: The following pages are useful guides and references:
#         * https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html
#         * https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst
#         * https://sphinx-tutorial.readthedocs.io
#         * https://www.ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/

# Import special modules ...
import sphinx_rtd_theme

# Set project information ...
project = "fortranlib"
copyright = "2021, Thomas Guymer"
author = "Thomas Guymer"

# Add Sphinx extension modules ...
extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.autosummary",
    "sphinx.ext.napoleon",
]

# Configure Sphinx extension modules ...
autosummary_generate = True
napoleon_google_docstring = False

# Set the HTML theme ...
html_theme = "sphinx_rtd_theme"
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files ...
exclude_patterns = ["_build", "Thumbs.db", ".DS_Store"]
