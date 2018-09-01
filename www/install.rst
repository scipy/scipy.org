===================
Installing packages
===================

These are general instructions for installing packages in the SciPy
ecosystem.

Scientific Python distributions
-------------------------------

For many users, especially on Windows, the easiest way to begin is to
download one of these Python distributions, which include all the key
packages:

* `Anaconda <https://www.anaconda.com/download/>`_: A free distribution
  of Python with scientific packages.  Supports Linux, Windows and Mac.
* `Enthought Canopy <https://www.enthought.com/products/canopy>`_: The free and
  commercial versions include the core scientific packages.
  Supports Linux, Windows and Mac.
* `Python(x,y) <https://python-xy.github.io/>`_: A free distribution
  including scientific packages, based around the
  `Spyder IDE <https://www.spyder-ide.org/>`__.  Windows and Ubuntu; Py2 only.
* `WinPython <https://winpython.github.io>`_: Another free distribution
  including scientific packages and the Spyder IDE.  Windows only,
  but more actively maintained and supports the latest Python 3 versions.
* `Pyzo <http://www.pyzo.org/>`_: A free distribution based on Anaconda and the
  IEP interactive development environment.  Supports Linux, Windows and Mac.

.. _pip-install:

Installing via pip
------------------

Most major projects upload official packages to the `Python Package
index <https://pypi.org>`_.  They can be installed on most operating
systems using Python's standard `pip <https://pip.pypa.io/en/stable>`_
package manager.

*Note that you need to have Python and pip already installed on your system.*

You can install packages via commands such as::

    python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

We recommend using an *user* install, using the ``--user`` flag to pip
(note: do not use ``sudo pip``, which can cause problems).  This
installs packages for your local user, and does not write to the
system directories.

Install system-wide via a Linux package manager
-----------------------------------------------

Users on Linux can install packages from repositories provided by the
distributions.  These installations will be system-wide, and may have
older package versions than those available using pip.

.. rubric:: Ubuntu & Debian

::

    sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

Users might also want to add the `NeuroDebian repository
<http://neuro.debian.net>`_ for extra SciPy packages.

.. rubric:: Fedora

Fedora 22 and later::

    sudo dnf install numpy scipy python-matplotlib ipython python-pandas sympy python-nose atlas-devel


Install system-wide via a Mac package manager
---------------------------------------------

Macs don't have a preinstalled package manager, but there are a couple
of popular package managers you can install.

.. rubric:: Macports

For Python 3.5 with `Macports <https://www.macports.org>`_ execute this command in a terminal::

    sudo port install py35-numpy py35-scipy py35-matplotlib py35-ipython +notebook py35-pandas py35-sympy py35-nose

.. rubric:: Homebrew

Homebrew no longer packages NumPy or other packages of the scientific Python
stack. If you're a Homebrew user, install
`Python3 with Homebrew  <https://docs.brew.sh/Homebrew-and-Python>`_
and the rest with pip::

    python -m pip install numpy scipy matplotlib

.. _individual-packages:

Other alternatives
------------------

Official binary and source packages for most projects are available
via ``pip`` as explained above.

Binary packages are also available from third parties, such as the
Python distributions above. For Windows, Christoph Gohlke provides `pre-built
Windows installers <http://www.lfd.uci.edu/~gohlke/pythonlibs>`_ for
many packages.

Source packages
---------------

You can build any of the packages from source, for instance if you
want to get involved with development. This is easy for packages
written entirely in Python, while others like NumPy require compiling
C code. Refer to individual projects for more details.
