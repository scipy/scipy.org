=============================================
Building NumPy & SciPy From Source on Mac OSX
=============================================

These instructions describe how to build NumPy and SciPy from
source. 

If you just want to use them, install pre-built binaries as described
in :doc:`/install`.

Python
------

Apple ships its own version of Python with OS X. However, we
*strongly* recommend installing the `official Python distribution
<http://www.python.org/download/>`__.

Apple's Developer Tools
-----------------------

Apple's Developer Tools provide a number of key libraries,
particularly the `vecLib Framework
<http://developer.apple.com/documentation/ReleaseNotes/MacOSX/vecLib.html>`__
, which includes BLAS and LAPACK. Install the most recent version from
`Apple's Developer Connection site <https://connect.apple.com>`__
(after free registration). The most recent version may also be
included on your OS X installation CD.  Ensure that all components are
installed by choosing **customize** when available during the install
process and selecting all optional packages - at least the X11
development tools and (on OS X 10.6 or lower) the 10.4 SDK.

FORTRAN
-------

Though virtually any commercial C/C++ compiler may be used with SciPy,
OS X come with GNU C compilers pre-installed. The only thing missing
is the GNU FORTRAN compiler.

Binaries of gfortran (GNU F95, this is a version of the much awaited,
free, open source, F95 compiler) are available from `this site
<http://r.research.att.com/tools/>`__ (`download universal binary
<http://r.research.att.com/gfortran-4.2.3.dmg>`__). We strongly
recommend to use this exact build, many other gfortran versions/builds
have created problems in the past.  On OS X 10.7 (Lion) the correct
version is http://r.research.att.com/gfortran-lion-5666-3.pkg (for
Xcode 4.1) and
http://r.research.att.com/tools/gcc-42-5666.3-darwin11.pkg (for Xcode
4.2 or higher) (also available through Homebrew).

Version-specific notes
----------------------

This section notes only things specific to one version of OS X, the
build instructions in :ref:`Obtaining and Building NumPy and SciPy
<osx-obtaining-and-building>` apply to all versions.

OS X 10.7 (Lion)
::::::::::::::::

The default C compiler on Lion is llvm-gcc-4.2, which has so far
proven to be problematic.  We recommend to use gcc-4.2, or
alternatively clang.  The Fortran flag "-ff2c" has been reported to be
necessary.

If you have the older version of XCode installed (4.1), then before
building with gcc, do:

::

     $ export CC=gcc-4.2
     $ export CXX=g++-4.2
     $ export FFLAGS=-ff2c

gcc-4.2 is not included with the current version of XCode (4.2). So,
if you have the current version of XCode then before building with
gcc, the easiest thing is to do:

::

     $ export CC=clang
     $ export CXX=clang
     $ export FFLAGS=-ff2c

Alternatively, you may try installing gcc-4.2 manually, and then using
the environment variables in the prior block.

OS X 10.6 (Snow Leopard)
::::::::::::::::::::::::

On OS X 10.6 the default gcc version is 4.2, while NumPy
and SciPy need to be built with 4.0 (at least in
combination with the Python from python.org). For gcc the correct
version should be picked up automatically, for C++ code (only in
SciPy) you should ensure that g++ and c++ default to 4.0.

::

     $ export CC=/usr/bin/gcc-4.0
     $ export CXX=/usr/bin/g++-4.0

A more permanent way to achieve this is to create symlinks 

::

       $ ln -s /usr/bin/g++-4.0 g++
       $ ln -s /usr/bin/g++-4.0 c++

in a directory and add that to the front of your PATH.

When building with Python 2.5 on OS X 10.6 it is also necessary to do

::

       $ export CC=/usr/bin/gcc-4.0


.. _osx-obtaining-and-building:

Obtaining and Building NumPy and SciPy
--------------------------------------

You may install NumPy and SciPy either by checking out the source
files from the Git repositories, or unpacking them from a source
archive file from :doc:`/scipylib/download`. If you choose the latter,
simply expand the archive (generally a gzipped tar file), otherwise
check out the following branches from the repository:

::

       $ git clone https://github.com/numpy/numpy.git
       $ git clone https://github.com/scipy/scipy.git

Both NumPy and SciPy are built as follows:

::

       $ python setup.py build
       $ python setup.py install

or, using scons,

::

       $ python setupscons.py scons --jobs=2

The above applies to the `official Python distribution
<http://www.python.org/download/>`__, which is 32-bit
only for 2.5/2.6/3.1 while 32/64-bit bundles are available for 2.7 and
3.x. For alternative 64-bit Pythons (either from Apple or home-built)
on Snow Leopard, you may need to extend your build flags to specify
the architecture by setting LDFLAGS and FFLAGS.

Note that with distutils (setup.py) given build flags like LDFLAGS
**do not extend but override the defaults**, so you have to specify
all necessary flags. Only try this if you know what you're doing!
Numscons does extend the flags, so you can for example use the build
command:

::

   LDFLAGS="-arch x86_64" FFLAGS="-arch x86_64" python setupscons.py scons

After a successful build, you may try running the built-in unit tests
for SciPy:

::

       python
       >>> import numpy as np
       >>> np.test('full')
       >>> import scipy
       >>> scipy.test()

Be sure not to import numpy or scipy while you're in the numpy/scipy source tree. Change directory first.

If you have any problems installing SciPy on your Mac
based on these instructions, please check the :doc:`scipy-users and
scipy-dev mailing list archives
</scipylib/mailing-lists>`__ for possible solutions. If you
are still stuck, feel free to join scipy-users for further
assistance. Please have the following information ready:

* Your OS version

* The versions of gcc and gfortran and where you obtained gfortran

  * ``$ gcc --version``

  * ``$ gfortran --version``

* The versions of numpy and scipy that you are trying to install

* The full output of ``$ python setup.py build``

Older notes
-----------

If you are missing readline support for your installation of Python, I
recommend `following these instructions
<http://www.friday.com/bbum/2006/03/06/python-mac-os-x-and-readline/>`__
for getting it installed with relative ease.
