=================================
Obtaining NumPy & SciPy libraries
=================================

.. seealso:: 

   :doc:`/install`

.. _download-official:

Official Source and Binary Releases
-----------------------------------

For each official release of NumPy and SciPy, we provide source code 
(tarball) as well as binary wheels for several major platforms.
Binary wheels for SciPy on Windows are not available, we strongly recommend
using a scientific Python distribution (those all do provide SciPy).

+--------+------------------------------+-------------------------------------+
| Project| Available packages           | Download location                   | 
+========+==============================+=====================================+
|        |  Official *source code*      |                                     |
|        |  (all platforms) and         |  `PyPI page for NumPy`_             |
| NumPy  |  *binaries* for **Windows**, |                                     |
|        |  **Linux** and **Mac OS X**  |                                     |
|        |                              |                                     |
+--------+------------------------------+-------------------------------------+
|        |  Official *source code*      |                                     |
|        |  (all platforms) and         | `SciPy release page`_ (sources)     |
| SciPy  |  *binaries* for **Windows**  |                                     |
|        |  & **Mac OS X**              | `PyPI page for SciPy`_ (all)        |
|        |                              |                                     |
|        |                              |                                     |
+--------+------------------------------+-------------------------------------+

Build instructions are available for :doc:`Linux <building/linux>`,
:doc:`Windows <building/windows>` and :doc:`Mac OSX <building/macosx>`.

.. _NumPy release page: https://github.com/numpy/numpy/releases
.. _SciPy release page: https://github.com/scipy/scipy/releases
.. _PyPI page for NumPy: https://pypi.python.org/pypi/numpy
.. _PyPI page for SciPy: https://pypi.python.org/pypi/scipy

Source Code Repository Access
-----------------------------

The most recent development versions of NumPy and SciPy are available through
the official repositories hosted on `Github`_.

.. _Github: https://github.com/

To check out the latest **NumPy** sources::

  git clone https://github.com/numpy/numpy.git numpy

To check out the latest **SciPy** sources::

  git clone https://github.com/scipy/scipy.git scipy

Build instructions
------------------

See :ref:`building` for build instructions.

.. _download-thirdpartypackages:

Third-Party/Vendor Package Managers
-----------------------------------

Below is a partial list of third-party and operating system vendor package 
managers containing NumPy and SciPy packages. 

These packages are **not** maintained by the NumPy and SciPy
developers; this list is provided only as a convenience. These
packages may not always provide the most up to date version of the
software, and may be unmaintained.

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
| `Ubuntu Linux`_     | `python-numpy`__          | `python-scipy`__          |
|                     |                           |                           |
|                     | __ python-numpy-ubuntu_   | __ python-scipy-ubuntu_   |
+---------------------+---------------------------+---------------------------+
| `Fedora`_           | `numpy`__                 | `scipy`__                 |
|                     |                           |                           |
|                     | __ numpy-fedora_          | __ scipy-fedora_          |
+---------------------+---------------------------+---------------------------+
| `Fink`_             | `numpy-py27`_,            | `scipy-py27`_,            |
|                     | `numpy-py35`_             | `scipy-py35`_             |
+---------------------+---------------------------+---------------------------+
| `FreeBSD (Ports)`_  | `math/py-numpy`_          | `science/py-scipy`_       |
+---------------------+---------------------------+---------------------------+
| `Gentoo Linux`_     | `dev-python/numpy`_       | `sci-libs/scipy`_         |
+---------------------+---------------------------+---------------------------+
| `MacPorts`_         | `py-numpy`_,              | `py-scipy`_,              |
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
.. _py-scipy: http://trac.macports.org/browser/trunk/dports/python/py-scipy/Portfile

.. Fink links
.. _Fink: http://www.finkproject.org/
.. _numpy-py27: http://pdb.finkproject.org/pdb/package.php/numpy-py27
.. _numpy-py35: http://pdb.finkproject.org/pdb/package.php/numpy-py35
.. _scipy-py27: http://pdb.finkproject.org/pdb/package.php/scipy-py27
.. _scipy-py35: http://pdb.finkproject.org/pdb/package.php/scipy-py35

.. Debian links
.. _Debian GNU/Linux: http://www.debian.org/
.. _python-numpy-debian: https://packages.debian.org/search?keywords=python-numpy
.. _python-scipy-debian: https://packages.debian.org/search?keywords=python-scipy

.. OpenSUSE links
.. _OpenSUSE: https://www.opensuse.org/
.. _python-numpy: http://software.opensuse.org/search?q=python-numpy
.. _python-numpy-devel: http://software.opensuse.org/search?q=python-numpy-devel
.. _python-scipy: http://software.opensuse.org/search?q=python-scipy
.. _python-scipy-devel: http://software.opensuse.org/search?q=python-scipy-devel

.. Gentoo links
.. _Gentoo Linux: https://www.gentoo.org/
.. _sci-libs/scipy: https://packages.gentoo.org/packages/sci-libs/scipy
.. _dev-python/numpy: https://packages.gentoo.org/packages/dev-python/numpy

.. Fedora Core links
.. _Fedora: https://getfedora.org/
.. _numpy-fedora: https://apps.fedoraproject.org/packages/numpy
.. _scipy-fedora: https://apps.fedoraproject.org/packages/scipy

.. ArchLinux links
.. _Arch Linux: https://www.archlinux.org/
.. _python-numpy-arch: https://www.archlinux.org/packages/?q=numpy
.. _python-scipy-arch: https://www.archlinux.org/packages/?q=scipy

.. Slackware links
.. _Slackware Linux: http://www.slackware.com/
.. _numpy (slackbuilds.org): https://slackbuilds.org/result/?search=numpy
.. _scipy (slackbuilds.org): https://slackbuilds.org/result/?search=scipy

.. Ubuntu links
.. _Ubuntu Linux: http://www.ubuntu.com/
.. _python-numpy-ubuntu: http://packages.ubuntu.com/search?keywords=python-numpy
.. _python-scipy-ubuntu: http://packages.ubuntu.com/search?keywords=python-scipy

.. FreeBSD links
.. _FreeBSD (Ports): https://www.freebsd.org/ports/
.. _math/py-numpy: https://svnweb.freebsd.org/ports/head/math/py-numpy
.. _science/py-scipy: https://svnweb.freebsd.org/ports/head/science/py-scipy

.. pkgsrc links
.. _NetBSD (pkgsrc): http://www.pkgsrc.org/
.. _py-numpy-pkgsrc: http://pkgsrc.se/math/py-numpy
.. _py-scipy-pkgsrc: http://pkgsrc.se/math/py-scipy
