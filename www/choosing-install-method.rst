.. _choosing-install-method:

Choosing an install method
==========================

There are many ways to install Python itself and the SciPy Stack.  This
section attempt to give a concise summary of the pros and cons of the
most common methods, and a few guidelines on how to pick the best method
for you.  Note that the actual install instructions for each method
can be found in :ref:`Installing the SciPy Stack <install>`.

The main methods are:

- A scientific Python distribution
- Using an OS specific package manager
- Using pip_
- Using conda_


Pros and cons per method
------------------------

A scientific Python distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Pros:

- A single download for everything, including Python itself.
- All scientific Python packages will have been tested to work together.
- Often a GUI for updates and installs is provided (in addition to the normal
  command-line tools).
- A very large collection of scientific Python packages, as well as common
  web frameworks and other popular Python packages.
- Also includes important non-Python packages (like HDF5, Qt, gcc, R, etc.) that
  are often hard to install by other means.
- Binaries for everything, usually no compiler needed.

Cons:

- There may not be an installer if you're on a less commonly used OS
  (32-bit Linux for example).
- Doesn't integrate with an existing Python installation.

Using an OS-specific package manager
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Pros:

- Package manager itself already installed (on Linux) or so useful for
  non-Python things that you'll want to install it anyway (on OS X).
- Package managers are reliable, mature technology.
- Easy to get started.

Cons:

- On Linux, installs into the same Python environment as used by the OS itself,
  which can be fragile if you want to install packages also with pip_.
- On OS X, packages provided by Homebrew and Macports are often not as well
  tested or optimized as other install methods.
- Not everything you need will be packaged.

Using ``pip``
~~~~~~~~~~~~~
Pros:

- Can work with an existing Python install (do *not* install into the Python
  provided by your OS though, that's always a bad idea).
- Is very widely used, and is the installer recommended by the
  `Python Packaging Authority <https://www.pypa.io>`_.
- Installs wheels, which more and more packages provide on PyPI_.

Cons:

- Does not work well on Windows.
- Does not include a true dependency resolver (so state can become inconsistent).
- Cannot handle non-Python dependencies (those are important for scientific
  applications: BLAS/LAPACK, HDF5, etc.).
- Not all packages provide complete dependency info on PyPI, which can make
  pip_ installs fail.
- Publishing wheels on PyPI (so pip_ can install them) is hard, especially
  for packages with compiled code.

Using ``conda``
~~~~~~~~~~~~~~~
Note: conda_ is the *package manager* on which the Anaconda_ and Miniconda_
*distributions* are built.  For a good in-depth discussion on what conda_
is and is not, see `this blog post
<https://jakevdp.github.io/blog/2016/08/25/conda-myths-and-misconceptions/>`_.

Pros:

- Can handle non-Python dependencies.
- Has a true dependency resolver.
- Works well on Windows, OS X and Linux.
- Can manage multiple Python versions without issues.
- Conda environments have better isolation that virtualenvs.
- Using pip_ within conda_ environments works well.
- Publishing conda_ packages is a streamlined process (with `conda-forge`_).

Cons:

- Cannot work with an existing Python install.
- Cannot use wheels (use conda binary packages instead), so for projects
  not yet packaged for conda_ one still needs to use pip_ (or do the
  packaging, which is fortunately easy).
- Documentation and usage instructions are often sparser than for pip_.
- If you're on a less commonly used OS (like 32-bit Linux), there will be
  no precompiled packages.


Recommendations
---------------

If you are a *new user* and will be focusing on scientific work,
your best option is a distribution.  In particular, we recommend Anaconda_ -
it is the most widely used distribution and is based on conda_ (the most
reliable package manager, especially for scientific Python packages).
Note that Anaconda includes Python itself, so it's a single download/install
and you will have everything you need to get started.

If you are on *Windows*, use a scientific Python distribution.  Pip doesn't
work well on Windows; it needs compilers that are very hard to set up
correctly.

If you are on *Linux*, you may want to consider using the package manager
supplied with your OS.  This is an easy and reliable option, provided that
you don't need the very latest version of some packages (OS package managers
are usually slow to update).  If you do want more recent versions of packages
than your package manager provides, both installing those with pip_ or
using Anaconda_ (or Miniconda_) are good options.

If you already have an *existing Python install* that you want to reuse and
add scientific Python packages to, you want to use pip_.  Pip is able
to install new packages into an existing Python install, conda_ is not able
to do that (by design).

If you are mainly doing things *other than scientific work* (like web
programming), you may want to choose what is popular in your community.
For example, web developers often use pip_ with venv_/virtualenv_ or
Buildout_.


.. _pip: http://pip-installer.org/
.. _conda: http://conda.pydata.org
.. _Buildout: http://www.buildout.org
.. _PyPI: http://pypi.python.org/
.. _conda-forge: https://conda-forge.github.io/
.. _Anaconda: https://docs.continuum.io/anaconda/
.. _Miniconda: http://conda.pydata.org/miniconda.html
.. _venv: https://docs.python.org/3/library/venv.html
.. _virtualenv: https://virtualenv.pypa.io/en/stable/
