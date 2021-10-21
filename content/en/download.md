---
title: Obtaining SciPy
sidebar: false
---

# Official source and binary releases

For each official release of SciPy, we provide source code
(tarball), as well as binary wheels for several major platforms
(Windows, OSX, Linux).

{{< yamlToTable >}}

headers:
  - Available Packages
  - Download location

format:
  - align: left
  - align: right

rows:

  - columns:
      - |
        Official *source code* (all platforms) and *binaries* for<br/>
        **Windows**, **Linux** and **Mac OS X**
      - |
        [SciPy release page](https://github.com/scipy/scipy/releases) (sources)<br/>
        [PyPI page for SciPy](https://pypi.python.org/pypi/scipy) (all)

{{< /yamlToTable >}}


# Source code repository access

The most recent development versions of SciPy is available
through the official repositories hosted on
[GitHub](https://github.com/).

To check out the latest **SciPy** sources:

    git clone https://github.com/scipy/scipy.git scipy

# Build instructions

Build instructions for SciPy can be found in its documentation. The
latest version can be found at:
<https://scipy.github.io/devdocs/building/index.html>

# Third-party/vendor package managers

Below is a partial list of third-party and operating system vendor
package managers containing SciPy packages.

These packages are **not** maintained by the SciPy developers;
this list is provided only as a convenience. These packages may not
always provide the most up-to-date version of the software, and may be
unmaintained.

**IMPORTANT:** If you experience problems with these packages
(*especially* those related to installation/build errors), **please
report the problem to the package maintainer first, rather than to the
SciPy mailing lists**.

{{< yamlToTable >}}

headers:
  - Distribution
  - SciPy Packages

format:
  - align: left
  - align: left
  - align: right

rows:
  - columns:
    - "[Arch Linux](https://www.archlinux.org/)"
    - "[python-scipy](https://www.archlinux.org/packages/?q=scipy)"

  - columns:
    - "[Debian GNU/Linux](http://www.debian.org/)"
    - "[python-scipy](https://packages.debian.org/search?keywords=python-scipy)"

  - columns:
    - "[Ubuntu Linux](http://www.ubuntu.com/)"
    - "[pythonscipy](http://packages.ubuntu.com/search?keywords=python-scipy)"

  - columns:
    - "[Fedora](https://getfedora.org/)"
    - "[scipy](https://apps.fedoraproject.org/packages/scipy)"

  - columns:
    - "[Fink](http://www.finkproject.org/)"
    - "[scipy-py38](http://pdb.finkproject.org/pdb/package.php/scipy-py38)"

  - columns:
    - "[FreeBSD (Ports)](https://www.freebsd.org/ports/)"
    - "[science/py-scipy](https://svnweb.freebsd.org/ports/head/science/py-scipy)"

  - columns:
    - "[Gentoo Linux](https://www.gentoo.org/)"
    - "[sci-libs/scipy](https://packages.gentoo.org/packages/sci-libs/scipy)"

  - columns:
    - "[MacPorts](http://www.macports.org/)"
    - "[py-scipy](http://trac.macports.org/browser/trunk/dports/python/py-scipy/Portfile)"

  - columns:
    - "[NetBSD (pkgsrc)](http://www.pkgsrc.org/)"
    - "[math/py-scipy](http://pkgsrc.se/math/py-scipy)"

  - columns:
    - "[OpenSUSE](https://www.opensuse.org/)"
    - |
      [python-scipy](http://software.opensuse.org/search?q=python-scipy),
      [python-scipy-devel](http://software.opensuse.org/search?q=python-scipy-devel)

  - columns:
    - "[Slackware Linux](http://www.slackware.com/)"
    - "[scipy (slackbuilds.org)](https://slackbuilds.org/result/?search=scipy)"

{{< /yamlToTable >}}
