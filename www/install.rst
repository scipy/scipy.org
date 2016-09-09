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

Mac and Linux users can install pre-built binary packages for the scipy stack
packages using `pip <https://pip.pypa.io/en/stable>`_.  pip is the
installation tool recommended by the Python Packaging Authority.

At the moment, *pip does not work well for Windows* because we do not have the
necessary compilers to build some binary packages on Windows.

To install via pip on Mac or Linux, first upgrade pip to the latest version.
For Python 3::

    python3 -m pip install --upgrade pip

Replace ``python3`` with ``python2`` for Python 2 pip upgrade.

Then install the scipy stack packages with pip.  We recommend a *user*
install, using the ``--user`` flag to pip.  This installs packages for your
local user, and does not need extra permissions to write to the system
directories::

    pip3 install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

Use ``pip2`` instead of ``pip3`` for Python 2 installs.

For user installs, make sure your user install executable directory is on your
PATH.  Here are example commands for setting the user PATH where the user is
using Python 3 by default:

Linux::

    # Consider adding this at the end of your ~/.bashrc file
    export PATH="$PATH:/home/your_user/.local/bin"

OSX::

    # Consider adding this at the end of your ~/.bash_profile file
    export PATH="$PATH:/Users/your_user/Library/Python/3.5/bin"

Replace ``your_user`` with your username.

Install systemwide via a Linux package manager
----------------------------------------------

Users on Linux can quickly install the necessary packages from standard
repositories for various distributions.  These installations will be
system-wide, and will be somewhat out of date compared to versions installed
with pip.

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

Fedora 21 or earlier::

    sudo yum install numpy scipy python-matplotlib ipython python-pandas sympy python-nose atlas-devel

The versions in Fedora 17 or newer meet the current SciPy stack specification.

Gentoo
~~~~~~

::

    sudo emerge -aN '>=dev-python/numpy-1.6' '>=sci-libs/scipy-0.10' '>=dev-python/matplotlib-1.1' '>=dev-python/ipython-0.13' '>=dev-python/pandas-0.8' '>=dev-python/sympy-0.7' '>=dev-python/nose-1.1'

You may get some messages saying that keyword changes or USE changes are
necessary in order to proceed, and that you should use ``--autounmask-write`` to
write changes to config files.

If this happens, just run the above command with ``--autounmask-write``
appended, then run ``sudo dispatch-conf`` (or an alternative) to save the
configuration changes, and finally run the original command again.

Install systemwide via a Mac package manager
----------------------------------------------

Macs (unlike Linux) don't come with a package manager, but there are a couple
of popular package managers you can install.

Macports
~~~~~~~~

To install the SciPy stack for Python 2.7 with `Macports
<http://www.macports.org>`_ execute this command in a terminal::

    sudo port install py27-numpy py27-scipy py27-matplotlib py27-ipython +notebook py27-pandas py27-sympy py27-nose

Homebrew
~~~~~~~~

At the time of writing (September 2016), `Homebrew <http://brew.sh/>`_ does
not have the full SciPy stack available (i.e. you cannot do ``brew install
<formula>`` for everything).  You can install NumPy, SciPy and Matplotlib,
with ``brew tap homebrew/python; brew install python numpy scipy matplotlib``,
but we recommend pip installs in preference to the homebrew builds.

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
