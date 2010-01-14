=============================================
Building NumPy & SciPy From Source on Windows
=============================================

.. contents::
   :local:

Supported Compilers
-------------------

As is pointed out in the general build guidelines, building NumPy and SciPy
requires a C compiler. Furthermore, a Fortran 77 compiler is needed to build
SciPy and to build a LAPACK library for use in NumPy and SciPy.

The MinGW_ project provides windows versions of the free GNU compilers gcc and
g77. These are the compilers most SciPy developers work with and hence the
compilers that are supported the best by the SciPy build scripts.

Cygwin_ is a POSIX compatible Linux-like environment for Windows. It is a very
useful tool as it allows to compile and use many Unix tools without
modification. We'll need it for the compilation of ATLAS. If selected during
installation, Cygwin also makes available its own versions of the MinGW
compilers (by the command line option "-mno-cygwin" to gcc), which produce
identical code. There is no need to install the separate MinGW distribution
when Cygwin is already installed.

SciPy also supports **Microsoft Visual C++** (MSVC) as the C/C++ compiler
extension modules for the official binary distribution of Python, the runtime
libraries have to be compatible. As the official versions of Python 2.3/2.4/2.5
are compiled with Visual Studio 2003 (Visual Studio 7.1) and hence linked to
msvcr71, this leaves only MSVC 7.1 to build extensions for these Python
versions. This pretty much excludes the free (as in beer) `Visual Studio 2005`_
Express, at least if one doesn't also want to build Python (and all other
extension modules) from sources with MSVC 8 - which currently is not offically
supported. Combining MSVC with G77 from MinGW or Cygwin is supported, as is the
combination with other Fortran compilers.

.. _MinGW: http://www.mingw.org/
.. _Cygwin: http://www.cygwin.com/
.. _Visual Studio 2005: 

Downloading and installing a compiler
-------------------------------------

Generally you only need one C compiler (and one Fortran compiler). Cygwin is
required if you want to build ATLAS yourself.

MinGW
#####

The easiest way to install MinGW is to use the MinGW installer from here. The
current (as of 3 August, 06) candidate distribution with gcc and g77 3.4.5 is
reported to work best. After installation you need to put the MinGW\bin
directory on the path.

Cygwin
######

Cygwin can be conveniently installed and updated with their 
`convenient installer <http://www.cygwin.com/setup.exe>`.

Make sure that the ``gcc`` and ``gcc-mingw`` packages in the "Devel" section
are selected. If you want to use the official Python distribution (recommended)
and don't want to get confused, do not select the Python option in the Cygwin
installer. The Cygwin tools should be used from within the Cygwin ``bash`` 
shell available from the start menu after installation.  See this  
`tutorial <http://cplus.about.com/od/compilersandides/l/aa061304a.htm>`_
explaining the basics of Cygwin.

Visual Studio
#############

The installation is quite straightforward; see the documentation provided by
Microsoft for additional help. The command line tools are most conveniently
used from the Visual Studio command prompt available from  the start menu.

Building NumPy with the Intel Math Kernel Library (MKL)
-------------------------------------------------------

.. TODO: What about SciPy? Ask DavidC

NumPy can be built using the optimized BLAS and LAPACK libraries within 
Intel's Math Kernel Library. MKL's implementation of BLAS and LAPACK are 
apparently better optimized for Intel chips than ATLAS's implementation.

Download the trial of MKL for Windows and install it. The trial is 30 days, 
but it's currently unknown what will happen to the library and header files 
on your hard drive after that period has expired.

You can use MKL to build with MSVC7.1, the same compiler used by Python 
>= 2.4. Make sure you have Visual Studio 2003 installed. 

.. TODO: will other compilers work? ask DavidC

Once you've checked out the source for NumPy, create an empty file called
``.numpy-site.cfg`` in your home directory (something like ``C:\Documents and
Settings\username``). Windows Explorer might not allow you to create a file
starting with ".", so you may have to use the command line to rename it. Make
sure you have a ``HOME`` user environment variable that points to your home
directory (see Control Panel/System/Advanced/Environment Variables). Add the
following to the file, substituting your MKL installation path where
appropriate: 

::
    # config file for building numpy on ia32 platform,
    # using Intel's Math Kernel Library for win32
    # builds successfully with MSVC7.1
    # replace C:\Program Files\Intel\MKL\9.0 with your Intel MKL install path
    
    [mkl]
    include_dirs = C:\Program Files\Intel\MKL\9.0\include
    library_dirs = C:\Program Files\Intel\MKL\9.0\ia32\lib
    mkl_libs = mkl_ia32, mkl_c_dll, libguide40
    lapack_libs = mkl_lapack
    # mkl_c or mkl_c_dll? either seem to work:
    # mkl_c : "cdecl interface library"
    # mkl_c_dll : "cdecl interface library for dynamic library"
    # libguide or libguide40? either seem to work:
    # libguide.lib : "Static threading library"
    # libguide40.lib : "Interface library for dynamic threading library"

Check that the specified libraries can indeed be found by running:

::
    python setup.py config

from the root NumPy source directory. Then, (as of numpy r3726) all that's
required is running: 

::
    python setup.py install

This should build NumPy without errors and install it to your site-packages
directory. Make sure you test your NumPy installation by running 
:func:`numpy.test`.

.. TODO: Add SciPy instructions for MKL

BLAS, LAPACK and ATLAS
----------------------

NumPy and SciPy can be built with support for optimized BLAS_ and LAPACK_
libraries (the supported BLAS interface is the CBLAS interface, not the
Fortran 77 interface).

.. _BLAS: http://www.netlib.org/blas/faq.html
.. _LAPACK: http://www.netlib.org/lapack/faq.html

Pre-built versions of the ATLAS libraries are available for several 
processors:

.. TODO: Add links

 * Pentium 2; early Athlon chips
 * Pentium 3/SSE (possibly Athlon XP model 6 and later AMD chips)
 * Pentium 4/SSE2

Building ATLAS
##############

ATLAS_ is the most widely available, free BLAS implementation on Windows. It 
is well supported by NumPy and SciPy.

**IMPORTANT:** NumPy and SciPy in Windows can currently only make use of CBLAS
and LAPACK as *static libraries* - DLLs are not supported. 

If you don't yet have optimized static CBLAS and LAPACK libraries, you can
easily build them from within Cygwin (LAPACK also can just as easily be built
with MinGW).

 1. Download and extract the most recent version of the ATLAS sources.
    Currently the most stable "unstable" version is 3.7.11. A new "stable"
    version is expected to be released this summer, the 3.6.0 version is
    already pretty dated. 
 2. To avoid `SSE3 problems`_ on some platforms, deactivate SSE3 by replacing
    line 77 in ``ATLAS/CONFIG/probe_SSE3.c`` with  

    ::
        
        /* if (testv3[0] != 3.0 || testv3[1] != 7.0) */ 
    
 3. Execute make in the Cygwin command prompt in the Atlas root directory. In
    Cygwin the Windows drives ``C:\``, ``D:\``, etc. are mapped to
    ``/cygdrive/c/``, ``/cygdrive/d/``, etc. 
 4. Generally accept the default options by hitting return. Select the correct
    processor. Do not activate POSIX threads. Use the express installation.
    You do not need to specify custom compiler flags, the ``-mno-cygwin`` does
    not make a difference at this stage. Accept the architecture defaults. If
    you do not know your processor type, downloading and running `CPU-Z`_ may
    help.
 5. As prompted by the config script, execute  ``make install
    arch=YOUR_ARCHITECTURE`` . This can take anywhere from 15 minutes to
    several hours, depending on your setup. 
 6. Execute ``make sanity_test arch=YOUR_ARCHITECTURE``  and hope that no tests
    fail (the message ``[sanity_test] Error 1 (ignored)`` is to be expected). 

Now copy the files ``libatlas.a``, ``libcblas.a``, ``libf77blas.a`` and
``liblapack.a`` from ``ATLAS\lib\YOUR_ARCHITECTURE`` to a directory of your
choice, for example ``C:\BLASLAPACKLIBS``. 

Building LAPACK
###############

Once you've completed the steps above,

 1. Download and extract the `LAPACK sources
    <http://www.netlib.org/lapack/lapack.tgz>`_. Then download the `latest
    development patch <http://www.netlib.org/lapack-dev/>`_ and overwrite the
    files from the standard distribution with the files in the patch.  
 2. Copy the file ``LAPACK\INSTALL\make.inc.LINUX`` to ``LAPACK\make.inc``,
    where LAPACK stands for your LAPACK root directory.
 3. Append ``.PHONY: install testing timing`` as the last line to
    ``LAPACK\Makefile``
 4. Execute ``make install lib`` and wait a few minutes for the compilation to
    finish (the timing error in the beginning is without meaning).

Now copy the file ``lapack_LINUX.a`` from ``LAPACK`` to your equivalent of the
folder ``BLASLAPACKLIBS`` created above. 

Obtaining an ATLAS-optimized LAPACK
###################################

In Cygwin, ``cd`` to your ``BLASLAPACKLIBS`` folder and execute the following:

::
    
    ar x liblapack.a
    ar r lapack_LINUX.a *.o
    rm *.o
    mv lapack_LINUX.a liblapack.a

You now have the files ``libcblas.a``, ``libf77blas.a``, ``liblapack.a`` and
``libatlas.a`` in your ``BLASLAPACKLIBS`` folder, holding optimized static
CBLAS, BLAS, (complete) LAPACK libraries and their low level ATLAS support
library. If you want to use MSVC to build NumPy/SciPy, you have to rename the
``lib*.a`` files to ``*.lib``, i.e. ``libcblas.a`` to ``cblas.lib``, for
instance.

In case you want to create a DLL with the full BLAS, CBLAS and LAPACK interface
(currently not relevant for SciPy), this could be easily done as follows: 

::

   gcc -mno-cygwin -shared -o blaslapack.dll -Wl,--out-implib=blaslapack.lib \
   -Wl,--export-all-symbols -Wl,--allow-multiple-definition \
   -Wl,--enable-auto-import -Wl,--whole-archive liblapack.a libf77blas.a \
   libcblas.a -Wl,--no-whole-archive libatlas.a -lg2c

This generates a DLL linked to ``msvcrt.dll``. If you want to generate a DLL
(only) linked to ``msvcr71``, using the command line option ``-lmsvcr71`` is
not enough (due to a bug in MinGW?). Instead, you need to replace ``-lmsvcrt``
in your gcc spec file (in ``Cygwin\lib\gcc\i686-pc-cygwin\3.4.X`` or
``MinGW\lib\gcc\mingw32\3.4.X``) with ``-lmsvcr71`` before executing the above
command. If you want to check the DLL dependencies, you can use ``depends``. 

The generated ``blaslapack.lib`` is the import library for linking the DLL.

Building NumPy with ATLAS/LAPACK
################################

In order to configure NumPy to use your optimized BLAS/LAPACK libraries you
need to copy the ``site.cfg.example`` file in the root directory of NumPy to
``site.cfg``. If ``site.cfg.example`` does not exist, then just create a new
``site.cfg``.  Change its contents as follows:

If you've built ATLAS and LAPACK as described above:

::
    [atlas]
    library_dirs = c:\path\to\BLASLAPACKLIBS
    atlas_libs = lapack, f77blas, cblas, atlas

If you want to use some other static BLAS and LAPACK libraries instead, use: 

::
    [blas]
    library_dirs = c:\path\to\CBLAS
    blas_libs = cblas
    
    [lapack]
    library_dirs = c:\path\to\BLASLibs
    lapack_libs = lapack

where ``cblas`` and ``lapack`` should be replaced with the names of your
libraries (without ``lib*.a`` or ``.lib`` extensions).

Now change to the NumPy root directory in a Windows command prompt window (or
the Cygwin bash shell). If you want to compile with MinGW or Cygwin-MinGW,
execute

::
    c:\path\to\python.exe setup.py config --compiler=mingw32 build
    --compiler=mingw32 bdist_wininst

and if you want to compile with Visual Studio 2003, execute

::
    c:\path\to\python.exe setup.py config --compiler=msvc build --compiler=msvc
    bdist_wininst

This leaves you with a nice binary installer in the dist subfolder, which you
can use to install NumPy and later uninstall through "Add and Remove Programs"
in the Windows Control Panel. 

If you'd rather just go ahead and actually install it somewhere, use: 

::
    c:\path\to\python.exe setup.py config --compiler=[compiler] build
    --compiler=[compiler] install --prefix=c:\where\to\install


If you want to compile and install NumPy for use with the Python from Cygwin
(usually you don't), execute

::
    python setup.py config --compiler=mingw32 build --compiler=mingw32 install

If you later wish to rebuild NumPy, say after updating the code from SVN, 
it may be necessary to delete the ``build`` directory first before 
re-running the above commands. 

Miscellaneous Notes
-------------------

Miscellaneous Notes:

If you're getting a ``gcc.lib not found`` error, it is probably because you're
building with ``--compiler=msvc``, but you also have MinGW installed. In that
case Numpy may compile some Fortran files using MinGW, and then at link time
try to link with ``gcc.lib`` which doesn't exist in the MinGW distribution. You
can fix this by copying some MinGW ``.a`` file to ``.lib`` files:

::
    cd c:\MinGW\lib\gcc\mingw32\{compiler.version}\
    copy libgcc.a   gcc.lib
    copy c:\MinGW\lib\libg2c.a   .\g2c.lib

If you get errors like this:

::
    lapack.lib(zunmbr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(zunmqr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dormql.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(zunmql.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dormbr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dormqr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(zhseqr.o) : error LNK2019: unresolved external symbol _s_cat referenced in function _zhseqr_
    lapack.lib(zunmlq.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dhseqr.o) : error LNK2019: unresolved external symbol _s_cat referenced in function _dhseqr_
    lapack.lib(dormtr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(zunmtr.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dormlq.o) : error LNK2001: unresolved external symbol _s_cat
    lapack.lib(dlamch.o) : error LNK2019: unresolved external symbol _e_wsfe referenced in function _dlamc2_
    lapack.lib(xerbla.o) : error LNK2001: unresolved external symbol _e_wsfe
    lapack.lib(dlamch.o) : error LNK2019: unresolved external symbol _do_fio referenced in function _dlamc2_
    lapack.lib(xerbla.o) : error LNK2001: unresolved external symbol _do_fio
    lapack.lib(dlamch.o) : error LNK2019: unresolved external symbol _s_wsfe referenced in function _dlamc2_
    lapack.lib(xerbla.o) : error LNK2001: unresolved external symbol _s_wsfe
    lapack.lib(xerbla.o) : error LNK2019: unresolved external symbol _s_stop referenced in function _xerbla_
    lapack.lib(ilaenv.o) : error LNK2019: unresolved external symbol _s_cmp referenced in function _ilaenv_
    lapack.lib(ilaenv.o) : error LNK2019: unresolved external symbol _s_copy referenced in function _ilaenv_
    lapack.lib(zlahqr.o) : error LNK2019: unresolved external symbol _z_abs referenced in function _zlahqr_
    lapack.lib(zlanhe.o) : error LNK2019: unresolved external symbol _z_abs referenced in function _zlanhe_
    lapack.lib(zgebal.o) : error LNK2019: unresolved external symbol _z_abs referenced in function _zgebal_
    lapack.lib(zlange.o) : error LNK2019: unresolved external symbol _z_abs referenced in function _zlange_
    lapack.lib(zlanhs.o) : error LNK2019: unresolved external symbol _z_abs referenced in function _zlanhs_
    lapack.lib(zhseqr.o) : error LNK2019: unresolved external symbol __alloca referenced in function _zhseqr_
    lapack.lib(zlarfx.o) : error LNK2019: unresolved external symbol __alloca referenced in function _zlarfx_
    lapack.lib(zlahqr.o) : error LNK2019: unresolved external symbol _z_sqrt referenced in function _zlahqr_
    build\lib.win32-2.4\numpy\linalg\lapack_lite.pyd : fatal error LNK1120: 10 unresolved externals

you need to add the g2c and gcc libraries to the ATLAS and LAPACK
libraries you have already. With Cygwin, you can find these in
``/lib/gcc/i686-pc-mingw32/3.4.4``. Copy them to ``g2c.lib`` and ``gcc.lib``,
respectively, and modify ``site.cfg`` accordingly. 


Building SciPy
--------------

.. _ATLAS: http://math-atlas.sourceforge.net/
.. _SSE3 problems: http://math-atlas.sourceforge.net/errata.html#sse3kill
.. _CPU-Z: http://www.cpuid.com/cpuz.php

