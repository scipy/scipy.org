===================
Installation
===================

Installations methods include:

* :ref:`Distributions <distributions>`
* :ref:`Pip <pip-install>`
* :ref:`Package Manager <package_manager>`
* :ref:`Source <source>`
* :ref:`Binaries <binaries>`

Methods differ in ease of use, coverage, maintenance of old versions, system-wide versus local environment use, and control. With pip or Anaconda's conda, you can control the package versions for a specific project to prevent conflicts. Conda also controls non-Python packages like MKL or HDF5. System package managers, like ``apt-get``, install across the entire computer, often have older versions, and don't have as many available versions. Source compilation is much more difficult but is necessary for debugging and development. If you don't know which installation method you need or prefer, we recommend the Scientific Python Distribution `Anaconda <https://www.anaconda.com/download/>`_ .

.. _distributions:

Scientific Python Distributions (Recommended)
=============================================

Python distributions provide the language itself along with the most commonly used packages and tools. These downloadable files require little configuration, work on almost all setups, and provide all the commonly used scientific python tools.

`Anaconda <https://www.anaconda.com/download/>`_ works on Windows, Mac, and Linux, provides over 1,500 Python/R packages, and is used by over 15 million people. Anaconda provides a lite version, `Miniconda <https://docs.conda.io/en/latest/miniconda.html>`_, which still provides access to the *conda* package manager.

Other options include:

* `Enthought Canopy <https://www.enthought.com/products/canopy>`_: Free and commercial versions; Supports Linux, Windows, and Mac; Includes an IDE.
* `Python(x,y) <https://python-xy.github.io/>`_: A free distribution including scientific packages; based around the `Spyder IDE <https://www.spyder-ide.org/>`__; Windows and Ubuntu; Py2 only.
* `WinPython <https://winpython.github.io>`_: Another free distribution including scientific packages and the Spyder IDE; Windows only, but more actively maintained and supports the latest Python 3 versions.
* `Pyzo <http://www.pyzo.org/>`_: A free distribution based on Anaconda and the IEP interactive development environment; Supports Linux, Windows, and Mac.
* `NeuroDebian repository <http://neuro.debian.net>`_ : Only for the Debian OS and geared toward neuroscientists.

.. _pip-install:

Installing via Pip
==================

Python comes with an inbuilt package management system, `pip <https://pip.pypa.io/en/stable>`_. Pip can install, update, or delete any official package.

You can install packages via the command line by entering::

 python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

We recommend using an *user* install, sending the ``--user`` flag to pip. ``pip`` installs packages for the local user and does not write to the system directories. Preferably, do not use ``sudo pip``, as this combination can cause problems. 

Pip accesses the Python Package Index, `PyPI <https://pypi.org/>`_ , which stores almost 200,000 projects and all previous releases of said projects. Because the repository keeps previous versions, you can pin to a version and not worry about updates causing conflicts. Pip can also install packages in local *virtualenv*, or virtual environment. 

.. _package_manager:

Install System-wide via a Package Manager
=========================================

System package managers can install the most common python packages. They install packages for the entire computer, often use older versions, and don't have as many available versions.

.. _Ubuntu_Debian:

Ubuntu and Debian
------------------
using apt-get::

 sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

.. _Fedora:

Fedora 22 and later
---------------------
using dnf::

 sudo dnf install numpy scipy python-matplotlib ipython python-pandas sympy python-nose atlas-devel


.. _Mac:

Mac
---

Mac doesn't have a preinstalled package manager, but there are a couple of popular package managers you can install.

For Python 3.5 with `Macports <https://www.macports.org>`_ , execute this command in a terminal::

 sudo port install py35-numpy py35-scipy py35-matplotlib py35-ipython +notebook py35-pandas py35-sympy py35-nose

`Homebrew <https://brew.sh/>`_ has incomplete coverage of the scipy ecosystem, but does install these packages::

 brew install numpy scipy ipython jupyter

.. _source:

Source packages
===============

You can build any of the packages from source. Those involved in development may take this route to get developmental versions or alter source code. Refer to individual projects for more details.

.. _binaries:

Binaries
==================

Binary files can directly install the packages. These can either come from the direct source, like `GitHub <https://github.com/>`_ or `PyPI <https://pypi.org/>`_ , or third-party repositories. Linux operating systems, like `Ubuntu <https://packages.ubuntu.com/>`_ , have package repositories where you can search for and download individual binaries. For Windows, Christoph Gohlke provides `pre-built Windows installers <http://www.lfd.uci.edu/~gohlke/pythonlibs>`_ for many packages.

