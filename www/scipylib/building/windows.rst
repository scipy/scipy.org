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


Building the Released SciPy
---------------------------

This section provides the step-by-step process to build the released scipy. If you want
to build completely from source, you should estimate at least three hours to build all
libraries and compile SciPy. Feel free to stop and inspect any step at any time, but
for this section, we'll just mention the steps without providing an in-depth explanation
for the reasons behind them. If you have further questions about what we're doing, more
in-depth documentation is provided in the sections below. Also, please make sure to read
this section before proceeding, as the presence or absence of error messages in general
is not a good indication of whether you've completed a step correctly. Each step creates
particular files, and what ultimately matters is whether you have built the required files
rather than whether error messages appeared in your terminal.

Building OpenBLAS
=================

First, we need to install the software required to build OpenBLAS_, which is the BLAS_
library that we're going to use. Because the software to build OpenBLAS is different than
that required to build SciPy and because OpenBLAS takes a long time to build, we're going
to start building OpenBLAS first and then explain what to do next while the OpenBLAS build
is running. **Alternatively, if you'd rather download a pre-build OpenBLAS, download the**
**one of the** `pre-built zip files`_ **and skip to the Installing OpenBLAS section below.**

First, install MSYS2 using `these instructions`_. Make sure to install the correct
architecture for the SciPy that you want to build (eg. 32 or 64 bit), and make sure to
install the MinGW, and git packages. Open a MSYS2 terminal and type the following:

.. code:: shell

   pacman -S --needed base-devel 
       mingw-w64-i686-toolchain
       mingw-w64-x86_64-toolchain git
       mingw-w64-i686-cmake mingw-w64-x86_64-cmake

You should now have all of the tools required to build OpenBLAS. Now change directories
to your favorite location with the following:
 
.. code:: shell

   cd /c/Users/MyUser/Downloads/
   
You don't necessarily need to build in that particular location, but it should be somewhere
reasonable. Now clone the repository required to build OpenBLAS:

.. code:: shell

   git clone https://github.com/matthew-brett/build-openblas.git
   cd build-openblas
   git submodule update --init --recursive

Now let's build OpenBLAS. To make sure that we're ready to build, type the following in
the terminal:

.. code:: shell

   make
   gfortran
   gcc

If any of these commands fail, you're not ready to build. Go back and make sure that MSYS2
is installed correctly and has the required packages enabled. Now, let's set some
environment variables. In the MSYS2 terminal, type the following.

.. code:: shell

    export OPENBLAS_COMMIT=5f998ef
    export OPENBLAS_ROOT="C:\\opt"
    export BUILD_BITS=64

Make sure that each variable makes sense. More specifically, make sure that the path that
`OPENBLAS_ROOT` points to can be deleted. Make sure that the `OPENBLAS_COMMIT` points to
the version that you want to build. Make sure that the architecture is correctly set to
either 32 or 64 bit. And after you've made sure of that, build OpenBLAS.

.. code:: shell

    .\build_openblas.sh

Building OpenBLAS is extremely problematic and may fail if your system is not correctly
configured. Your build may fail after a few hours and you may have to restart it after 
fixing an undocumented problem. OpenBLAS builds can also fail silently and produce an
incorrect binary. Please, if you have any issues, `report them`_ so that we can save the
next person's time.

While you're waiting on OpenBLAS to finish building, go ahead and install `build tools`_
from Microsoft, since these take a while to install and you'll need them later.

After the :code:`build_openblas.sh` script has completed (probably with an error), there
should be an :code:`openblas.a` file somewhere on your system. If :code:`OPENBLAS_ROOT` was
set to :code:`C:\\opt`, then you might see a line like this in the MSYS2 terminal:

.. code:: shell

   Copying the static library to /c/opt/64/lib

Installing OpenBLAS
===================

If you see that line, then you might have OpenBLAS correctly, even if other failures
occurred. Look in that folder for :code:`openblas.a`. If you find a file called something
like :code:`libopenblas_5f998ef_gcc7_2_0.a`, just rename it to `openblas.a` and continue.
If the file isn't there, then poke around and try to find the file elsewhere. If you don't
have that file, you'll probably need to find out what happened and then build OpenBLAS
again. But if you have that file, we'll assume that you've completed this step correctly.
Proceeding on that assumption, let's build SciPy.

**Before continuing, it is extremely important that you remove every file named either**
:code:`openblas.lib` **or** :code:`libopenblas.lib` **from your computer. Failure to do**
**so could result in later build errors that will be difficult to debug. If you see the**
**following output at any point, you have not completed this step correctly.**

.. code:: shell

   FOUND:
      libraries = ['libopenblas', 'libopenblas']
      library_dirs = ['C:\opt\64\lib']
      language = c
      define_macros = [('HAVE_CBLAS', None)]
   FOUND:
      libraries = ['libopenblas', 'libopenblas']
      library_dirs = ['C:\opt\64\lib']
      language = c
      define_macros = [('HAVE_CBLAS', None)]

Building SciPy
==============

From this point forward, we're not going to need MSYS2 any longer, so you might uninstall
it to prevent further confusion. Building SciPy requires a different set of build tools
than building OpenBLAS (yes, the whole previous excercise was to build a single file:
:code:`openblas.a`), so let's go ahead and install them:

1) Install MinGW-w64 from https://mingw-w64.org. Use the "MinGW builds" and 
   check the "posix-threads" box.
2) Install Microsoft Visual Studio 2015 or 2017 Community Edition (use the `build tools`_
   from Microsoft)
3) Install git from https://git-scm.org/
4) Finally, install Python from https://python.org/ (make sure to check the box to install
   pip)

After you've installed the required software, open Powershell (click start, type "powershell",
press enter), change to a good location to build (just like with building OpenBLAS, but this
time we're using a different toolchain with different commands), and clone SciPy. From now
on, we'll use powershell for the rest of the procedure.

.. code:: shell

   cd C:\Users\MyUser\Downloads
   git clone https://github.com/scipy/scipy.git
   cd scipy
   
Now we need to copy the :code:`openblas.a` file that we've built earlier to the correct
location. Find where Python is installed:

.. code:: shell

   python -c "import sys; print(sys.executable)"

If your Python is installed somewhere like :code:`C:\\Program Files\\Python36\\python.exe`,
you'll need to put the :code:`openblas.a` file in :code:`C:\\Program Files\\Python36\\Lib`.
Adjust the location accordingly based on where :code:`python.exe` is located. Now for a
sanity check. Type  the following and press enter.

.. code:: shell

    gfortran
    
You might see an error with the above command. Chances are, :code:`gfortran` is not on your
:code:`$env:PATH`. To add it, you'll need to run a command like the following (except with
the path adjusted to be correct). Run the following, and then try :code:`gfortran` again.

.. code:: shell

    $env:PATH += ";C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin"

Now install the dependencies that we need to build and test SciPy:

.. code:: shell

    pip install numpy cython pytest pytest-xdist pytest-faulthandler

Please note that this is a simpler procedure than what is used for the official binaries.
**Your binaries will only work with the latest numpy version**. For building against
older Numpy versions, see Building Against an Older Numpy Version. Make sure that you're
in the directory with `setup.py` (you should be if you haven't changed directories):

.. code:: shell

    ls setup.py
    
Assuming that you have set up everything correctly, you should be ready to build. Run
the following commands:

.. code:: shell

    pip wheel -v -v -v .
    python runtests.py --mode full
    
Congratulatations, you've built SciPy!

.. _OpenBLAS: https://github.com/xianyi/OpenBLAS
.. _`these instructions`: https://github.com/orlp/dev-on-windows/wiki/Installing-GCC--&-MSYS2
.. _`build tools`: https://www.visualstudio.com/downloads/#build-tools-for-visual-studio-2017
.. _`report them`: https://github.com/scipy/scipy/issues/new
.. _`pre-built zip files`: https://3f23b170c54c2533c070-1c8a9b3114517dc5fe17b7c3f8c63a43.ssl.cf2.rackcdn.com/

Building Against an Older Numpy Version
--------------------------------------

If you want to build SciPy to work with an older numpy version, then you will need 
to replace the Numpy "distutils" folder with the folder from the latest numpy.
The following powershell snipped can upgrade Numpy distutils while retaining an older
Numpy ABI_.

.. code:: shell

      $NumpyDir = $((python -c 'import os; import numpy; print(os.path.dirname(numpy.__file__))') | Out-String).Trim()
      rm -r -Force "$NumpyDir\distutils"
      $tmpdir = New-TemporaryFile | %{ rm $_; mkdir $_ }
      git clone -q --depth=1 -b master https://github.com/numpy/numpy.git $tmpdir
      mv $tmpdir\numpy\distutils $NumpyDir

.. _ABI: https://en.wikipedia.org/wiki/Application_binary_interface

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
