==========================
Installing the SciPy Stack
==========================

These are instructions for installing :ref:`the full SciPy stack
<stackspec>`.  For installing individual packages, such as NumPy and
SciPy, see :ref:`individual-packages` below.


Scientific Python distributions
-------------------------------

For most users, especially on Windows and Mac, the easiest way to install the
packages of the SciPy stack is to download one of these Python distributions,
which includes all the key packages:

* `Anaconda <https://www.continuum.io/downloads>`_: A free distribution
  for the SciPy stack.  Supports Linux, Windows and Mac.
* `Enthought Canopy <https://www.enthought.com/products/canopy/>`_: The free and
  commercial versions include the core SciPy stack packages.
  Supports Linux, Windows and Mac.
* `Python(x,y) <http://python-xy.github.io/>`_: A free distribution
  including the SciPy stack, based around the Spyder IDE.  Windows only.
* `WinPython <http://winpython.github.io>`_: A free distribution
  including the SciPy stack.  Windows only.
* `Pyzo <http://www.pyzo.org/>`_: A free distribution based on Anaconda and the
  IEP interactive development environment.  Supports Linux, Windows and Mac.

Linux packages
--------------

Users on Linux can quickly install the necessary packages from repositories.

Ubuntu & Debian
~~~~~~~~~~~~~~~

::

    sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

The versions in Ubuntu 12.10 and Debian 7.0 meet the current SciPy stack
specification. Users might also want to add the `NeuroDebian repository
<http://neuro.debian.net/>`_ for extra SciPy packages.

Fedora
~~~~~~

::

    sudo yum install numpy scipy python-matplotlib ipython python-pandas sympy python-nose blas-devel lapack-devel

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
------------

Macs (unlike Linux) don't come with a package manager, but there are a couple of
popular package managers you can install.

Macports
~~~~~~~~

To install the scipy stack for Python 2.7 with `Macports
<http://www.macports.org>`_ execute this command in a terminal::

    sudo port install py27-numpy py27-scipy py27-matplotlib py27-ipython +notebook py27-pandas py27-sympy py27-nose


.. _individual-packages:

Individual binary and source packages
-------------------------------------

The maintainers of many of the packages in the :ref:`SciPy stack
<stackspec>` provide "official" binary installers for common Windows
and OS-X systems that can be used to install the packages
one by one. These installers are generally built to be compatible
with the Python binaries available from python.org.

*  `python <https://www.python.org/downloads/>`_
*  `numpy <https://github.com/numpy/numpy/releases>`_
*  `scipy <https://github.com/scipy/scipy/releases>`_
*  `matplotlib <http://matplotlib.org/downloads.html>`_
*  `ipython <https://github.com/ipython/ipython/releases>`_
*  `pandas <http://pandas.pydata.org/getpandas.html>`_
*  `sympy <https://github.com/sympy/sympy/releases>`_
*  `nose <https://nose.readthedocs.org/en/latest/>`_

For Windows: Christoph Gohlke provides `pre-built Windows installers
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>`_ for many Python
packages, including all of the core SciPy stack.

You can also build any of the SciPy packages from source, for instance if you
want to get involved with development. This is easy for packages written
entirely in Python, while others like NumPy require compiling C code. Refer to
individual projects for more details.

