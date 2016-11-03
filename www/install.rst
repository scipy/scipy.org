==========================
Installing the SciPy Stack
==========================

These are instructions for installing :ref:`the full SciPy stack
<stackspec>`.  For installing individual packages, such as NumPy and
SciPy, see :ref:`individual-packages` below.

Scientific Python distributions
-------------------------------

For most users, especially on Windows, the easiest way to install the packages
of the SciPy stack is to download one of these Python distributions, which
include all the key packages:

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

Installing via pip
------------------

Mac and Linux users can install pre-built binary packages for the SciPy stack
using `pip <https://pip.pypa.io/en/stable>`_.  Pip can install pre-built binary
packages in the `wheel <http://wheel.readthedocs.io>`_ package format.

*Note that you need to have Python and pip already installed on your system.*

*pip does not work well for Windows* because the standard pip package index
site, `PyPI <https://pypi.python.org/pypi>`_, does not yet have Windows wheels
for some packages, such as SciPy.

To install via pip on Mac or Linux, first upgrade pip to the latest version::

    python -m pip install --upgrade pip

Then install the SciPy stack packages with pip.  We recommend a *user*
install, using the ``--user`` flag to pip (note: don't use ``sudo pip``, that
will give problems).  This installs packages for your
local user, and does not need extra permissions to write to the system
directories::

    pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

For user installs, make sure your user install executable directory is on your
PATH.  Here are example commands for setting the user PATH:

Linux::

    # Consider adding this at the end of your ~/.bashrc file
    export PATH="$PATH:/home/your_user/.local/bin"

OSX::

    # Consider adding this at the end of your ~/.bash_profile file
    export PATH="$PATH:/Users/your_user/Library/Python/3.5/bin"

Replace ``your_user`` with your username, and "3.5" with your Python version.

Install systemwide via a Linux package manager
----------------------------------------------

Users on Linux can quickly install the necessary packages from standard
repositories for various distributions.  These installations will be
system-wide, and will be somewhat out of date compared to versions installed
with pip.

The install commands for the most common Linux distributions are given here.
For other distributions, search the default package repository for package
names of individual packages in the :ref:`SciPy stack <stackspec>`.

Ubuntu & Debian
~~~~~~~~~~~~~~~

::

    sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

The versions in Ubuntu 12.10 or newer and Debian 7.0 or newer meet the current
SciPy stack specification. Users might also want to add the `NeuroDebian
repository <http://neuro.debian.net/>`_ for extra SciPy packages.

Fedora
~~~~~~

Fedora 22 and later::

    sudo dnf install numpy scipy python-matplotlib ipython python-pandas sympy python-nose atlas-devel

The versions in Fedora 17 or newer meet the current SciPy stack specification.


Install systemwide via a Mac package manager
----------------------------------------------

Macs (unlike Linux) don't come with a package manager, but there are a couple
of popular package managers you can install.

Macports
~~~~~~~~

To install the SciPy stack for Python 3.5 with `Macports
<http://www.macports.org>`_ execute this command in a terminal::

    sudo port install py35-numpy py35-scipy py35-matplotlib py35-ipython +notebook py35-pandas py35-sympy py35-nose

Homebrew
~~~~~~~~

At the time of writing (September 2016), `Homebrew <http://brew.sh/>`_ does
not have the full SciPy stack available (i.e. you cannot do ``brew install
<formula>`` for everything).  You can install NumPy, SciPy and Matplotlib,
with ``brew tap homebrew/python; brew install python numpy scipy matplotlib``.

.. _individual-packages:

Windows packages
----------------

Windows does not have any package manager analogous to that in Linux, so installing
one of the scientific Python distributions mentioned above is preferred. However, if
that is not an option, Christoph Gohlke provides `pre-built Windows installers <http://www.lfd.uci.edu/~gohlke/pythonlibs/>`_
for many Python packages, including all of the core SciPy stack, which work extremely well.

Individual source packages
--------------------------

You can build any of the SciPy packages from source, for instance if you
want to get involved with development. This is easy for packages written
entirely in Python, while others like NumPy require compiling C code. Refer to
individual projects for more details.
