=======================
Obtaining NumPy & SciPy
=======================

.. _download-official:

Official Source and Binary Releases
-----------------------------------

For each official release of NumPy and SciPy, we provide source code 
(tarball) as well as binary packages for several major platforms. Binary 
packages for other platforms may be available from your operating system 
vendor.

+--------+------------------------------+-------------------------------------+
| Project| Available packages           | Download location                   | 
+========+==============================+=====================================+
|        |  Official *source code*      |                                     |
|        |  (all platforms) and         | `SourceForge site for NumPy`_       |
|        |  *binaries* for **Windows**  |                                     |
| NumPy  |  & **Mac OS X**              |                                     |
|        +------------------------------+-------------------------------------+
|        |  Pre-built *binary* packages | `SciPy PPA on Launchpad`_           |
|        |  **Ubuntu Linux**            |                                     |
+--------+------------------------------+-------------------------------------+
|        |  Official *source code*      |                                     |
|        |  (all platforms) and         | `SourceForge site for SciPy`_       |
|        |  *binaries* for **Windows**  |                                     |
| SciPy  |  & **Mac OS X**              |                                     |
|        +------------------------------+-------------------------------------+
|        |  Pre-built *binary* packages | `SciPy PPA on Launchpad`_           |
|        |  **Ubuntu Linux**            |                                     |
+--------+------------------------------+-------------------------------------+

.. _SourceForge site for NumPy: http://sourceforge.net/projects/numpy/files/
.. _SourceForge site for SciPy: http://sourceforge.net/projects/scipy/files/
.. _SciPy PPA on Launchpad: https://edge.launchpad.net/~scipy/+archive/ppa

Bleeding Edge Repository Access
-------------------------------

The most recent development versions of NumPy and SciPy are available through
the official `Subversion`_  repositories.

.. _Subversion: http://subversion.tigris.org/

To check out the latest **NumPy** sources:

::

  svn co http://svn.scipy.org/svn/numpy/trunk numpy

To check out the latest **SciPy** sources:

::

  svn co http://svn.scipy.org/svn/scipy/trunk scipy
   

Software Distributions that include NumPy/SciPy
-----------------------------------------------

A number of software distributions exist that bundle NumPy and SciPy along
with a variety of other tools, including data file manipulation packages,
visualization tools and more general software development tools. Such 
distributions can be an excellent way to get started with Python for
scientific computing. 
 
We present a list of the most prominent such distributions below. They vary 
in terms of platform/operating system support, license (free/commercial), 
packages included, and general focus (general/interactive scientific 
computing vs. mathematics/computer algebra vs. scientific software/GUI 
development). If you hope to transition to using Python as your every day 
scientific computing environment, these distributions are well worth 
investigating.

Enthought Python Distribution
#############################

The `Enthought Python Distribution (EPD)`_ is a "kitchen-sink-included"
distribution of the Python programming language, including over 80
additional tools and libraries. The EPD bundle includes NumPy, SciPy,
`IPython`_, 2D and 3D visualization, database adapters, and a lot of
other tools right out of the box.

.. _IPython: http://ipython.scipy.org/

It is currently available as a single-click installer for Windows XP (x86),
Mac OS X (a universal binary for OS X 10.4 and above), RedHat 3, 4 and 5, 
as well as Solaris 10 (x86 and x86_64/amd64).

EPD is free for academic use.  An annual subscription including installation
support is available for individual and commercial use. You can download
a 30-day free trial at the `Enthought website`__.

__ `Enthought Python Distribution (EPD)`_
.. _Enthought Python Distribution (EPD): http://www.enthought.com/products/epd.php

Python(x,y)
###########

`Python(x,y)`_ is a distribution of free/open source scientific and engineering
software for Microsoft Windows XP/Vista (although there is an effort underway
to develop an `Ubuntu Linux version <http://linux.pythonxy.com/ubuntu/>`_) 
based around `Qt`_ and `Eclipse`_. It aims to provide an environment for 
interactive scientific computing as well as more development-oriented features
such as integrated GUI design tools for scientific software development.
More details as well as downloads are available on at the 
`Python(x,y) website`__.

__ `Python(x,y)`_

.. _Python(x,y): http://www.pythonxy.com/
.. _Qt: http://qt.nokia.com/
.. _Eclipse: http://www.eclipse.org/

Sage
####

`Sage`_ is a monolithic distribution of a wide variety of open source 
mathematical software available in both source and binary forms for a 
number of operating systems, including Linux (x86/amd64), Mac OS X, Solaris, 
and Windows (through VMware Player). A bootable Sage LiveCD is also available.

Sage bundles recent  versions of both NumPy and SciPy, along with its
own Python interpreter. See the `Sage Installation Guide`_ for installation 
instructions.

.. _Sage: http://sagemath.org/
.. _Sage Installation Guide: http://sagemath.org/doc/installation/

SciPy Superpack (OS X)
######################

The Superpack provides *bleeding edge* binaries of NumPy and SciPy from recent
Subversion checkouts, maintained by Chris Fonnesbeck. It is available from 
`MacInScience.org`_.

.. _MacInScience.org: http://www.macinscience.org/

The Superpack requires Mac OS X 10.5 Leopard with either Apple's preinstalled
Python 2.5.1, `ActivePython 2.5`_ or `Python 2.5 from Python.org`_. Note that
the Superpack's version detection may fail with other Python distributions
(e.g. Python installed by `Fink`_ and `MacPorts`_) and it will refuse to 
install. If you are using Python provided by Fink or MacPorts it is 
recommended that you install NumPy/SciPy with the appropriate packages 
(see :ref:`Third-Party/Vendor Package Managers <download-thirdpartypackages>` below).

**NOTE:** NumPy is included in the Superpack.  For best compatibility, it is
recommended that you use the NumPy provided with the Superpack rather than
a separately installed version.

.. _ActivePython 2.5: http://www.activestate.com/Products/ActivePython/
.. _Python 2.5 from Python.org: http://www.python.org/download/releases/2.5.4/


Source Python Distribution
##########################

`Source Python Distribution (SPD)`_ is a Python distribution based on 
Sage, containing many optional (mainly scientific) packages that build 
from source. It contains only a small subset of Sage (an approximately 60 MB 
download compared with Sage's several hundred megabytes). It bundles recent 
versions of NumPy and SciPy, and is compatible with Sage's `packages format`_ 
so that you can selectively install other pieces of software included in 
Sage but not in SPD. See the `SPD website`__ for details.

__ `Source Python Distribution (SPD)`_
.. _Source Python Distribution (SPD): http://code.google.com/p/spdproject/
.. _packages format: http://www.sagemath.org/download-packages.html

.. _download-thirdpartypackages:

Third-Party/Vendor Package Managers
-----------------------------------

Below is a partial list of third-party and operating system vendor package 
managers containing NumPy and SciPy packages. 

These packages are **not** maintained by the NumPy and SciPy developers; 
this list is provided only as a convenience. These packages may not always
provide the most up to date version of the software, and may be 
unmaintained. Note that `Ubuntu Linux`_ is not listed, as official packages
are available; see :ref:`Official Source and Binary Releases <download-official>`.

**IMPORTANT:** If you experience problems with these packages (*especially* 
those related to installation/build errors), **please report the problem to 
the package maintainer first, rather than to the NumPy/SciPy mailing lists**. 

+---------------------+---------------------------+---------------------------+
| Distribution        | NumPy Packages            | SciPy Packages            | 
+=====================+===========================+===========================+
| `Arch Linux`_       | `python-numpy`__          | `python-scipy`__          |
|                     |                           |                           |
|                     | __ python-numpy-arch_     | __ python-scipy-arch_     |
+---------------------+---------------------------+---------------------------+
| `Debian GNU/Linux`_ | `python-numpy`__          | `python-scipy`__          |
|                     |                           |                           |
|                     | __ python-numpy-debian_   | __ python-scipy-debian_   |
+---------------------+---------------------------+---------------------------+
| `Fedora Core`_      | `numpy`__                 | `scipy`__                 |
|                     |                           |                           |
|                     | __ numpy-fedoracore_      | __ scipy-fedoracore_      |
+---------------------+---------------------------+---------------------------+
| `Fink`_             | `scipy-core-py24`_,       | `scipy-py24`_,            |
|                     | `scipy-core-py25`_,       | `scipy-py25`_,            |
|                     | `scipy-core-py26`_        | `scipy-py26`_             |
+---------------------+---------------------------+---------------------------+
| `FreeBSD Ports`_    | `ports/math/py-numpy`_    | `ports/science/py-scipy`_ |
+---------------------+---------------------------+---------------------------+
| `Gentoo Linux`_     | `dev-python/numpy`_       | `sci-libs/scipy`_         |
+---------------------+---------------------------+---------------------------+
| `MacPorts`_         | `py-numpy`_,              | `py-scipy`_,              |
|                     | `py25-numpy`_,            | `py25-scipy`_,            |
|                     | `py26-numpy`_             | `py26-scipy`_             |
+---------------------+---------------------------+---------------------------+
| `NetBSD (pkgsrc)`_  | `math/py-numpy`__         | `math/py-scipy`__         |
|                     |                           |                           |
|                     | __ py-numpy-pkgsrc_       | __ py-scipy-pkgsrc_       |
+---------------------+---------------------------+---------------------------+
| `OpenSUSE`_         | `python-numpy`_,          | `python-scipy`_,          |
|                     | `python-numpy-devel`_     | `python-scipy-devel`_     |
+---------------------+---------------------------+---------------------------+
| `Slackware Linux`_  | `numpy (slackbuilds.org)`_| `scipy (slackbuilds.org)`_|
+---------------------+---------------------------+---------------------------+

.. MacPorts links
.. _MacPorts: http://www.macports.org/
.. _py-numpy: http://trac.macports.org/browser/trunk/dports/python/py-numpy/Portfile
.. _py25-numpy: http://trac.macports.org/browser/trunk/dports/python/py25-numpy/Portfile
.. _py26-numpy: http://trac.macports.org/browser/trunk/dports/python/py26-numpy/Portfile
.. _py-scipy: http://trac.macports.org/browser/trunk/dports/python/py-scipy/Portfile
.. _py25-scipy: http://trac.macports.org/browser/trunk/dports/python/py25-scipy/Portfile
.. _py26-scipy: http://trac.macports.org/browser/trunk/dports/python/py26-scipy/Portfile

.. Fink links
.. _Fink: http://www.finkproject.org/
.. _scipy-core-py24: http://pdb.finkproject.org/pdb/package.php/scipy-core-py24
.. _scipy-core-py25: http://pdb.finkproject.org/pdb/package.php/scipy-core-py25
.. _scipy-core-py26: http://pdb.finkproject.org/pdb/package.php/scipy-core-py26
.. _scipy-py24: http://pdb.finkproject.org/pdb/package.php/scipy-py24
.. _scipy-py25: http://pdb.finkproject.org/pdb/package.php/scipy-py25
.. _scipy-py26: http://pdb.finkproject.org/pdb/package.php/scipy-py26

.. Debian links
.. _Debian GNU/Linux: http://www.debian.org/
.. _python-numpy-debian: http://packages.debian.org/python-numpy
.. _python-scipy-debian: http://packages.debian.org/python-scipy

.. OpenSUSE links
.. _OpenSUSE: http://www.opensuse.org/
.. _python-numpy: http://software.opensuse.org/search?q=python-numpy
.. _python-numpy-devel: http://software.opensuse.org/search?q=python-numpy-devel
.. _python-scipy: http://software.opensuse.org/search?q=python-scipy
.. _python-scipy-devel: http://software.opensuse.org/search?q=python-scipy-devel

.. Gentoo links
.. _Gentoo Linux: http://www.gentoo.org/
.. _sci-libs/scipy: http://packages.gentoo.org/package/sci-libs/scipy
.. _dev-python/numpy: http://packages.gentoo.org/package/dev-python/numpy

.. Fedora Core links
.. _Fedora Core: http://www.fedoraproject.org/
.. _numpy-fedoracore: https://admin.fedoraproject.org/pkgdb/packages/name/numpy
.. _scipy-fedoracore: https://admin.fedoraproject.org/pkgdb/packages/name/scipy

.. ArchLinux links
.. _Arch Linux: http://www.archlinux.org/
.. _python-numpy-arch: http://www.archlinux.org/packages/extra/python-numpy/
.. _python-scipy-arch: http://www.archlinux.org/packages/extra/python-scipy/

.. Slackware links
.. _Slackware Linux: http://www.slackware.com/
.. _numpy (slackbuilds.org): http://slackbuilds.org/result/?search=numpy
.. _scipy (slackbuilds.org): http://slackbuilds.org/result/?search=scipy

.. Ubuntu links
.. _Ubuntu Linux: http://www.ubuntu.com/

.. FreeBSD links
.. _FreeBSD Ports: http://www.freebsd.org/ports/
.. _ports/math/py-numpy: http://www.freebsd.org/cgi/cvsweb.cgi/ports/math/py-numpy/
.. _ports/science/py-scipy: http://www.freebsd.org/cgi/cvsweb.cgi/ports/science/py-scipy/

.. pkgsrc links
.. _NetBSD (pkgsrc): http://www.netbsd.org/pkg
.. _py-numpy-pkgsrc: http://pkgsrc.se/math/py-numpy
.. _py-scipy-pkgsrc: http://pkgsrc.se/math/py-scipy
