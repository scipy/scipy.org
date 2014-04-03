=================================
Obtaining NumPy & SciPy libraries
=================================

.. seealso:: 

   :doc:`/install`

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
| NumPy  |  *binaries* for **Windows**  |                                     |
|        |  & **Mac OS X**              |                                     |
|        |                              |                                     |
+--------+------------------------------+-------------------------------------+
|        |  Official *source code*      |                                     |
|        |  (all platforms) and         | `SourceForge site for SciPy`_       |
| SciPy  |  *binaries* for **Windows**  |                                     |
|        |  & **Mac OS X**              |                                     |
|        |                              |                                     |
+--------+------------------------------+-------------------------------------+

Build instructions are available for :doc:`Linux <building/linux>`,
:doc:`Windows <building/windows>` and :doc:`Mac OSX <building/macosx>`.

.. _SourceForge site for NumPy: http://sourceforge.net/projects/numpy/files/
.. _SourceForge site for SciPy: http://sourceforge.net/projects/scipy/files/
.. _SciPy PPA on Launchpad: https://edge.launchpad.net/~scipy/+archive/ppa

Bleeding Edge Repository Access
-------------------------------

The most recent development versions of NumPy and SciPy are available through
the official repositories hosted on `Github`_.

.. _Github: http://www.github.com/

To check out the latest **NumPy** sources:

::

  git clone git://github.com/numpy/numpy.git numpy

or (if you're behind a proxy blocking git ports)

::

  git clone http://github.com/numpy/numpy.git numpy

To check out the latest **SciPy** sources:

::

  git clone git://github.com/scipy/scipy.git scipy

or

::

  git clone http://github.com/scipy/scipy.git scipy

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
| `Fink`_             | `scipy-core-py24`_,       | `scipy-py24`_,            |
|                     | `scipy-core-py25`_,       | `scipy-py25`_,            |
|                     | `scipy-core-py26`_        | `scipy-py26`_             |
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
.. _Fedora: http://www.fedoraproject.org/
.. _numpy-fedora: https://apps.fedoraproject.org/packages/numpy
.. _scipy-fedora: https://apps.fedoraproject.org/packages/scipy

.. ArchLinux links
.. _Arch Linux: http://www.archlinux.org/
.. _python-numpy-arch: https://www.archlinux.org/packages/?q=numpy
.. _python-scipy-arch: https://www.archlinux.org/packages/?q=scipy

.. Slackware links
.. _Slackware Linux: http://www.slackware.com/
.. _numpy (slackbuilds.org): http://slackbuilds.org/result/?search=numpy
.. _scipy (slackbuilds.org): http://slackbuilds.org/result/?search=scipy

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
