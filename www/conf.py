# -*- coding: utf-8 -*-

import sys, os
from datetime import date

import matplotlib.sphinxext


sys.path.append(os.path.abspath('sphinxext'))

# -- General configuration -----------------------------------------------------

extensions = ['sphinx.ext.intersphinx',
              'sphinx.ext.imgmath',
              'ipython_console_highlighting',
              'sphinx.ext.ifconfig',
              'matplotlib.sphinxext.mathmpl',
              'matplotlib.sphinxext.plot_directive']

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'

# General information about the project.
project = u'Scipy'
copyright = u'%s SciPy developers' % date.today().year
version = ''
release = ''
pygments_style = 'sphinx'

# -- Options for HTML output ---------------------------------------------------

html_theme_path = [os.path.join(os.pardir, 'scipy-sphinx-theme', '_theme')]

html_theme = 'scipy'
html_theme_options = {
    'rootlinks': (),
    'sidebar': 'right',
    'navigation_links': False,
}
html_sidebars = {
    '**': ['sitenav.html', 'localtoc.html', 'searchbox.html'],
    'index': ['sitenav.html', 'searchbox.html'],
}

html_title = "SciPy.org"
html_static_path = ['_static']

html_use_modindex = False
html_use_index = False
html_show_sourcelink = False


intersphinx_mapping = {'http://docs.python.org/': None,
                       #'http://docs.scipy.org/doc/numpy/': None,
                       #'http://docs.scipy.org/doc/scipy/reference/': None,
                       }
