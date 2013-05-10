# -*- coding: utf-8 -*-

import sys, os
from datetime import date

sys.path.append(os.path.abspath('sphinxext'))

# -- General configuration -----------------------------------------------------

extensions = ['sphinx.ext.intersphinx',
              'sphinx.ext.pngmath',
              'ipython_console_highlighting',
              'sphinx.ext.ifconfig']

# Matplotlib sphinx extensions
# ----------------------------

# Currently we depend on some matplotlib extentions that are only in
# the trunk, so we've added copies of these files to fall back on,
# since most people install releases.  Once theses extensions have
# been released for a while we should remove this hack.  I'm assuming
# any modifications to these extensions will be done upstream in
# matplotlib!  The matplotlib trunk will have more bug fixes and
# feature updates so we'll try to use that one first.
try:
    import matplotlib.sphinxext
    extensions.append('matplotlib.sphinxext.mathmpl')
    extensions.append('matplotlib.sphinxext.only_directives')
    extensions.append('matplotlib.sphinxext.plot_directive')
except ImportError:
    extensions.append('mathmpl')
    extensions.append('only_directives')
    extensions.append('plot_directive')


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
html_favicon = 'favicon.ico'
html_static_path = ['_static']

html_use_modindex = False
html_use_index = False
html_show_sourcelink = False


intersphinx_mapping = {'http://docs.python.org/': None,
                       #'http://matplotlib.sourceforge.net/': None,
                       #'http://docs.scipy.org/doc/numpy/': None,
                       #'http://docs.scipy.org/doc/scipy/reference/': None,
                       }
