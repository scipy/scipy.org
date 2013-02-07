==========================
Installing the Scipy Stack
==========================

Scientific Python distributions
-------------------------------

For most users, especially on Windows and Mac, the easiest way to install the
packages of the Scipy stack is to download one of these Python distributions,
which includes all the key packages:

* `Anaconda <https://store.continuum.io/cshop/anaconda>`_: Both the free and the
  commercial versions include the core Scipy stack. Supports Linux, Windows and
  Mac.
* `EPD <http://www.enthought.com/products/epd.php>`_: At present, only the
  commercial version (free for academic use) includes all the Scipy stack
  packages. Supports Linux, Windows and Mac.
* `Python(x,y) <http://code.google.com/p/pythonxy/>`_: A free distribution
  including the Scipy stack, based around the Spyder IDE. Windows only.
* `WinPython <http://code.google.com/p/winpython/>`_: A free distribution
  including the Scipy stack. Windows only.

Linux packages
--------------

Users on Linux can quickly install the necessary packages from repositories.

Ubuntu & Debian
~~~~~~~~~~~~~~~

::

    sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

The versions in Ubuntu 12.10 and Debian 7.0 meet the current Scipy stack
specification. Users might also want to add the `NeuroDebian repository
<http://neuro.debian.net/>`_ for extra Scipy packages.

Fedora
~~~~~~

::

    sudo yum install numpy scipy python-matplotlib ipython python-pandas sympy python-nose

Users of Fedora 17 and earlier should then upgrade IPython using pip::

    sudo pip install --upgrade ipython

Gentoo
~~~~~~

::

    sudo emerge -aN '>=dev-python/numpy-1.6' '>=sci-libs/scipy-0.10' '>=dev-python/matplotlib-1.1' '>=dev-python/ipython-0.13' '>=dev-python/pandas-0.8' '>=dev-python/sympy-0.7' '>=dev-python/nose-1.1'

You may get some messages saying that keyword changes or USE changes are
necessary in order to proceed, and that you should use ``--autounmask-write`` to
write changes to config files. This is especially likely to happen if you are
running Gentoo Stable rather than Gentoo Testing, as of this writing (February
2013).

If this happens, just run the above command with ``--autounmask-write``
appended, then run ``sudo dispatch-conf`` (or an alternative) to save the
configuration changes, and finally run the original command again.

Mac packages
--------------

Macs (unlike Linux) don't come with a package manager, but there are a couple of
popular package managers you can install.

Macports
~~~~~~~~

To install the scipy stack for Python 2.7 with `Macports
<http://www.macports.org>`_ execute this command in a terminal::

    sudo port install py27-numpy py27-scipy py27-matplotlib py27-ipython +notebook py27-pandas py27-sympy py27-nose


Custom
------

You can assemble the Scipy stack from individual packages. For details of what
you need, see :ref:`the specification <stackspec>`. Packages are typically on
`the Python Package Index <http://pypi.python.org/pypi/>`_, and projects' sites
may also offer official binary packages (e.g. `numpy
<http://sourceforge.net/projects/numpy/files/NumPy/>`_, `scipy library
<http://sourceforge.net/projects/scipy/files/scipy/>`_).

Christoph Gohlke provides `pre-built Windows installers
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>`_ for many Python packages,
including all of the core Scipy stack.

You can also build any of the Scipy packages from source, for instance if you
want to get involved with development. This is easy for packages written
entirely in Python, while others like numpy require compiling C code. Refer to
individual projects for more details.
