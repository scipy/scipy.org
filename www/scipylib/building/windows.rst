===============================
Building From Source on Windows
===============================

.. contents::
   :local:

Overview
--------

Compared to OSX and Linux, building NumPy and SciPy on Windows is difficult,
largely due to the lack of compatible, open-source libraries like LAPACK_ or
ATLAS_ that are necessary to build both libraries and have them perform
relatively well. You can't ``sudo apt-get install`` everything like you
can on the other two platforms.

Fortunately, a lot of work has been done recently to rectify this situation.
Projects such as OpenBLAS_ and Mingwpy_ are under active development to develop
open-source toolchains that would allow Windows users to build and develop with
NumPy and SciPy from source without issues of financial, platform, or licensing constraints.

This document will attempt to provide a general summary of the available options that
users can currently avail themselves to if they so choose to build these libraries from
source. However, in light of all the work currently being done, **do not expect**
these instructions to be accurate in the long-run and be sure to check up on any of the
open source projects mentioned for the most up-to-date information. For more information
on all of these projects, the Mingwpy_ website is an **excellent** source of more in-depth
information than this document will provide.

.. _Mingwpy: http://mingwpy.github.io/
.. _ATLAS: http://math-atlas.sourceforge.net/
.. _OpenBLAS: https://github.com/xianyi/OpenBLAS
.. _LAPACK: http://www.netlib.org/lapack/

Python Libraries
----------------

For development purposes, you will need several Python libraries when building NumPy and
SciPy. These can be installed by running the command ``(sudo) pip install {library}``.
The libraries needed are:

1) **Cython** (compiling ``.pyx`` files)
2) **Nose** (running unit tests)
3) **Tempita** (SciPy only)

Compilers
---------

In order to build NumPy and SciPy, two compilers are needed: a C compiler
and a Fortran compiler. The latter is technically not necessary for NumPy,
but it is **strongly encouraged** to have one in order to build libraries like
LAPACK_ or ATLAS_ that will significantly improve performance. For the remainder
of this document, given the performance differences, **NumPy will be treated as if
it actually does require such libraries, hence necessitating a Fortran compiler.**

MinGW
#####

The Mingw-w64_ project provides Windows versions of the free GNU compilers **gcc** and
**gfortran**. These are the compilers most NumPy and SciPy developers work with and hence
are the best supported by build scripts in both libraries. Also, as indicated in the name,
they form the basis of the ongoing Mingwpy_ project mentioned previously. Thus, from a
long-term perspective, these compilers may be the optimal ones to use. Installation
instructions can be found `here <http://mingw-w64.org/doku.php/download>`__.

.. _Mingw-w64: http://mingw-w64.org/doku.php/

Cygwin
######

A POSIX-compatible, Linux-like environment for Windows, Cygwin_ is a very useful tool,
as it allows compilation and use of many Unix tools without modification. It can also be
used to build libraries like ATLAS_, which at the moment is very Unix-oriented, although
that may be subject to change as we will discuss later on. Installation instructions
for Cygwin_ can be found `here <https://cygwin.com/install.html>`__. When using the
installer (either 32-bit or 64-bit depending on your computer), **make sure to search
for and select** packages with the keyword **gcc** in them. **Note that if you use Cygwin's
gcc, anything built with it can only run in a Cygwin environment and not in your native
Windows environment.**

In addition, Cygwin also offers its own **identical** packages for Mingw-w64_ that you can
install by searching for **mingw64** in the packages list and then selecting those that contain
**i686** if you're using 32-bit or **x86_64** if you're using 64-bit. If you choose this option,
**there is no need to have a separate installation of Mingw-w64.** This is because anything built
with Mingw-w64_ will be cross-platform compatible, so the build will work in your native Windows
environment as well.

Finally, the installer may also miss several important DLL's necessary for proper function as
pointed out `here <http://stackoverflow.com/questions/32897685/cannot-compile-anything-with-gcc-on-cygwin32-missing-cygisl-10-dll>`__,
so double check that you have them marked during installation. Rest assured that even if you forget to
install a package, you can always run the installer again to install additional ones.

.. _Cygwin: http://www.cygwin.com/

Microsoft Visual C++ (MSVC)
###########################

NumPy and SciPy both support MSVC and its C/C++ compiler extension modules for the official
binary distribution of Python. However, make sure that you download the correct version!
For example, Python 2.7.x is compiled with Visual Studio 2008, and Python 3.5.1 is compiled
with Visual Studio 2015. If you are using Python 2.7.x, you can also visit this link `here <https://www.microsoft.com/en-gb/download/details.aspx?id=44266>`__
to download the **Microsoft Visual C++ Compiler for Python 2.7**. If you are using Python 3.4.x and Windows 7, you
should visit this link `here <https://www.microsoft.com/en-us/download/details.aspx?id=8279>`__ and download the
**Microsoft Windows SDK for Windows 7**. If you are using Python 3.5.x, you should obtain the compiler via their `Visual Studio`_
offering and download the **Community Edition**. If none of these configurations match your own, you will need to
use one of the other build options described above. Please be aware that this option does does not come with a Fortran compiler,
only a C/C++ compiler, and the only one currently known to be compatible with this compiler is the **Intel Fortran compiler
(ifort)**, which itself is difficult to obtain as will be explained in the discussion about the :ref:`MKL Library`.

.. _Visual Studio: https://www.visualstudio.com/

Libraries
---------

As mentioned in the overview, certain libraries (math libraries to be specific) are necessary
for a high performing NumPy and for building SciPy, and they are BLAS_ and LAPACK_. There are
many options available, in particular for BLAS_, and we will discuss several of the options below.

.. _BLAS: http://www.netlib.org/blas/

.. _`MKL Library`:

Intel Math Kernel Library (MKL)
###############################

Intel has provided its own implementations of BLAS_ and LAPACK_, and they are by far some
of the best performing libraries for **both** NumPy and SciPy. Unfortunately, they are not free and
also require their own Fortran compiler for these libraries to work. While it is possible to obtain
the libraries for free via their Community License (you can click `here <https://software.intel.com/sites/campaigns/nest/>`__
to learn more and click `here <https://registrationcenter.intel.com/en/forms/?productid=2558&licensetype=2>`__ to register),
it does not come with the Fortran compiler, **ifort**, which is necessary for building both the NumPy and SciPy libraries with MKL.

To obtain this compiler, it is necessary to download their **Intel Parallel Studio XE** product,
which can be trialed for 30 days, but it is currently unknown what will happen to the library and header
files on your hard drive after that period has expired. To download, visit this page `here <https://software.intel.com/en-us/fortran-compilers>`__
for more information. Note, if you are a **student** or **educator**, this option is very appealing because
Intel's academic license will provide you everything that you need **free of charge**. To register, visit
this page `here <https://software.intel.com/en-us/qualify-for-free-software>`__ and choose the appropriate
option corresponding to your current academic situations. Afterwards, click the link corresponding to
**Intel Parallel Studio XE** and download. Note that this installation will require that you have the most
up-to-date version of `Visual Studio`_.

Finally, a brief note regarding C/C++ compilers: the **Intel Parallel Studio XE** software package will come with
its own C/C++ compiler (**icc**), which will work perfectly fine when building the libraries. However, the C/C++ compiler
from MSVC (**cl**) should work just fine as well.

ATLAS and LAPACK
################

ATLAS_ is an optimized version of BLAS that is considered to be "portably efficient" according to its website. If you
want to use this library, the easiest is to use this library in combination with Mingw-w64_. Precompiled libraries using
this toolchain can be found `here <https://github.com/matthew-brett/np-wheel-builder/tree/master/atlas-builds>`__ in the
folder corresponding to your architecture (32-bit or 64-bit). While this setup has been shown to build NumPy successfully,
it is not known yet whether it can build SciPy.

If you are so inclined to build ATLAS_ by hand, you **must** use Cygwin to build it because the library was explicitly
designed for Unix environments. However, you can compile the library with either the native **gcc** tools or the **mingww-64**
tool package that you downloaded with Cygwin_. Installations scripts can be found in the same location `here <https://github.com/matthew-brett/np-wheel-builder/tree/master/atlas-builds>`__.
In the folder corresponding to your architecture, search for an **install_atlas** script, download the appropriate ZIP files
`here <http://nipy.bic.berkeley.edu/scipy_installers/atlas_builds/>`__, fill in some of the variables with appropriate
values corresponding to your directory structure (e.g. the **code_home** variable) and then run script. **Be forewarned
though that this will take a very long time (around eight hours) to install**.

Finally, it should be noted that ATLAS_, although open source, is not well optimized for Windows given its intended
operating system environment. Thus, if performance is of the utmost importance, ATLAS_ may not be the best choice of
libraries for building from source.

OpenBLAS and LAPACK
###################

OpenBLAS_ is an optimized version of BLAS that is currently used in languages like Julia_ by default. Besides being
actively worked upon, it performs about as well as the Intel libraries discussed previously. Furthermore, it is
quite easy to install using Cygwin_. Just search for **openblas** and **lapack** in the packages that you are downloading,
and they will be automatically installed into your **usr/lib** directory, which is where NumPy and SciPy will search
for libraries if no configuration file is provided. **Please note that if you choose this route, you must use Cygwin's
Python for this setup to work.** During installation, just search for **python** in the packages and download the
appropriate interpreter. However, if you are so inclined to build OpenBLAS_ by hand or want to build the library in your
native Windows environment, installation instructions can be found on the OpenBLAS_ wiki page `here <https://github.com/xianyi/OpenBLAS/wiki/Installation-Guide>`__.

.. _Julia: https://github.com/JuliaLang/julia

BLAS and LAPACK
###############

Up to this point, we have been discussing optimized versions of BLAS_ coupled with LAPACK_. It goes without saying then
that it must be possible to build NumPy and SciPy with an unoptimized (and therefore lower-performant) BLAS_ library.
Pre-built libraries are readily available `here <https://icl.cs.utk.edu/lapack-for-windows/lapack/>`__, though **be sure to check the environment in which the libraries** were
built. Otherwise, NumPy and SciPy will not build. However, if none of the environments match your own environment, the
libraries themselves can be downloaded as ZIP files by searching for a "download" section on the BLAS_ and LAPACK_ webpages.
Rough installation instructions can be found `here <http://ab-initio.mit.edu/wiki/index.php/Template:Installing_BLAS_and_LAPACK>`__ for
BLAS_ and on the LAPACK_ homepage for LAPACK_. While these instructions are for Linux, you should be able to follow these
instructions fairly well if you have either Cygwin_ or Mingw-w64_ installed on your computer.

Linking Libraries to NumPy and SciPy
------------------------------------

Now that you have obtained the libraries that you want to use to build NumPy and SciPy, it is now necessary to link
those libraries to NumPy and SciPy so that they will be used during the building process. There are two ways to do this.
First, you can store them in the "standard" locations, which correspond either to the ``Lib`` directory of your Python
installation or one of your ``lib`` directories (e.g. ``/usr/lib``) if you are using Cygwin_. To determine the "standard"
locations on your computer, navigate to the top-most level of your NumPy or SciPy directory and run ``python setup.py config``,
and the output will show you where Python is searching for libraries.

The other option is to create a configuration file, either called ``site.cfg`` or ``.numpy-site.cfg``. If you are building
both NumPy and SciPy, you should store it in your ``C:\Users\{username}`` directory of your native Windows environment or
your ``$HOME`` or ``~`` directory if you are using Cygwin_. If you are just building NumPy, you can store it in the
same directory as the topmost ``setup.py`` file. Before filling it in, make sure that your configuration file can be detected by
filling it with some invalid text (e.g. "asdf") and then run ``python setup.py config`` again. An exception should be thrown
because Python won't be able to parse your configuration file.

Depending on which library you use, the exact specifics of the configuration file will vary. The ``site.cfg.example``
file, which should be located at the top of your NumPy installation, provides an excellent guide for how to fill in
your configuration file given the libraries you are using. If you do not have such a file, you can find it online `here <https://github.com/numpy/numpy/blob/master/site.cfg.example>`__.

Additional Resources
--------------------

As discussed in the overview, this document is not meant to provide extremely detailed explanations on how to build
NumPy and SciPy on Windows. This is largely because there is no one clearly superior way to do so at this point in time,
and because the process for building these libraries on Windows is under active development, it is probable that any
information will go out of date relatively soon. If you wish to receive more assistance, please reach out to the NumPy
and SciPy mailing lists, which can be found `here <http://www.scipy.org/scipylib/mailing-lists.html>`__.  There are many
developers out there working on this issue right now, and they would certainly be happy to help you out!  Google is also
a good resource, as there are many people out there who use NumPy and SciPy on Windows, so it would not be surprising if
your question or problem has already been addressed.
