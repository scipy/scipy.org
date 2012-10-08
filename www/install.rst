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
  commercial version includes all the Scipy stack packages. Supports Linux,
  Windows and Mac.
* `WinPython <http://code.google.com/p/winpython/>`_: A free distribution
  including the Scipy stack. Windows only.
* `Python(x,y) <http://code.google.com/p/pythonxy/>`_: A free distribution with
  a similar aim, but the current release has older versions of some packages.
  Windows only.

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

Custom
------

You can assemble the Scipy stack from individual packages. For details of what
you need, see the specification.

Christoph Gohlke provides `pre-built Windows installers
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>`_ for many Python packages,
including all of the core Scipy stack.

You can also build any of the Scipy packages from source, for instance if you
want to get involved with development. This is easy for packages written
entirely in Python, while others like numpy require compiling C code. Refer to
individual projects for more details.
