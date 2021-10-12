---
title: Obtaining NumPy & SciPy libraries
sidebar: false
---

# Official source and binary releases

For each official release of NumPy and SciPy, we provide source code
(tarball), as well as binary wheels for several major platforms
(Windows, OSX, Linux).

{{< yamlToTable >}}

headers:
  - Project
  - Available Packages
  - Download location

format:
  - align: left
  - align: left
  - align: right

rows:
  - columns:
      - "NumPy"
      - |
        Official *source code* (all platforms) and *binaries* for<br/>
        **Windows**, **Linux**, and **Mac OS X**
      - "[PyPi page for NumPy](https://pypi.python.org/pypi/numpy)"

  - columns:
      - SciPy
      - |
        Official *source code* (all platforms) and *binaries* for<br/>
        **Windows**, **Linux** and **Mac OS X**
      - |
        [SciPy release page](https://github.com/scipy/scipy/releases) (sources)<br/>
        [PyPI page for SciPy](https://pypi.python.org/pypi/scipy) (all)

{{< /yamlToTable >}}


# Source code repository access

The most recent development versions of NumPy and SciPy are available
through the official repositories hosted on
[GitHub](https://github.com/).

To check out the latest **NumPy** sources:

    git clone https://github.com/numpy/numpy.git numpy

To check out the latest **SciPy** sources:

    git clone https://github.com/scipy/scipy.git scipy

# Build instructions

Build instructions for SciPy can be found in its documentation. The
latest version can be found at:
<https://docs.scipy.org/doc/scipy-dev/reference/building/index.html>

# Third-party/vendor package managers

Below is a partial list of third-party and operating system vendor
package managers containing NumPy and SciPy packages.

These packages are **not** maintained by the NumPy and SciPy developers;
this list is provided only as a convenience. These packages may not
always provide the most up-to-date version of the software, and may be
unmaintained.

**IMPORTANT:** If you experience problems with these packages
(*especially* those related to installation/build errors), **please
report the problem to the package maintainer first, rather than to the
NumPy/SciPy mailing lists**.

{{< yamlToTable >}}

headers:
  - Distribution
  - NumPy Packages
  - SciPy Packages

format:
  - align: left
  - align: left
  - align: right

rows:
  - columns:
    - "[Arch Linux](https://www.archlinux.org/)"
    - "[python-numpy](https://www.archlinux.org/packages/?q=numpy)"
    - "[python-scipy](https://www.archlinux.org/packages/?q=scipy)"

  - columns:
    - "[Debian GNU/Linux](http://www.debian.org/)"
    - "[python-numpy](https://packages.debian.org/search?keywords=python-numpy)"
    - "[python-scipy](https://packages.debian.org/search?keywords=python-scipy)"

  - columns:
    - "[Ubuntu Linux](http://www.ubuntu.com/)"
    - "[python-numpy](http://packages.ubuntu.com/search?keywords=python-numpy)"
    - "[pythonscipy](http://packages.ubuntu.com/search?keywords=python-scipy)"

  - columns:
    - "[Fedora](https://getfedora.org/)"
    - "[numpy](https://apps.fedoraproject.org/packages/numpy)"
    - "[scipy](https://apps.fedoraproject.org/packages/scipy)"

  - columns:
    - "[Fink](http://www.finkproject.org/)"
    - "[numpy-py38](http://pdb.finkproject.org/pdb/package.php/numpy-py38)"
    - "[scipy-py38](http://pdb.finkproject.org/pdb/package.php/scipy-py38)"

  - columns:
    - "[FreeBSD (Ports)](https://www.freebsd.org/ports/)"
    - "[math/py-numpy](https://svnweb.freebsd.org/ports/head/math/py-numpy)"
    - "[science/py-scipy](https://svnweb.freebsd.org/ports/head/science/py-scipy)"

  - columns:
    - "[Gentoo Linux](https://www.gentoo.org/)"
    - "[dev-python/numpy](https://packages.gentoo.org/packages/dev-python/numpy)"
    - "[sci-libs/scipy](https://packages.gentoo.org/packages/sci-libs/scipy)"

  - columns:
    - "[MacPorts](http://www.macports.org/)"
    - "[py-numpy](http://trac.macports.org/browser/trunk/dports/python/py-numpy/Portfile)"
    - "[py-scipy](http://trac.macports.org/browser/trunk/dports/python/py-scipy/Portfile)"

  - columns:
    - "[NetBSD (pkgsrc)](http://www.pkgsrc.org/)"
    - "[math/py-numpy](http://pkgsrc.se/math/py-numpy)"
    - "[math/py-scipy](http://pkgsrc.se/math/py-scipy)"

  - columns:
    - "[OpenSUSE](https://www.opensuse.org/)"
    - |
      [python-numpy](http://software.opensuse.org/search?q=python-numpy),
      [python-numpy-devel](http://software.opensuse.org/search?q=python-numpy-devel)
    - |
      [python-scipy](http://software.opensuse.org/search?q=python-scipy),
      [python-scipy-devel](http://software.opensuse.org/search?q=python-scipy-devel)

  - columns:
    - "[Slackware Linux](http://www.slackware.com/)"
    - "[numpy (slackbuilds.org)](https://slackbuilds.org/result/?search=numpy)"
    - "[scipy (slackbuilds.org)](https://slackbuilds.org/result/?search=scipy)"

{{< /yamlToTable >}}
<!--
+-------------------+------------------------+------------------------+
| Distribution      | NumPy Packages         | SciPy Packages         |
+===================+========================+========================+
| [Arch             | [python-               | [python-               |
| Linux](https://ww | numpy]{.title-ref}\_\_ | scipy]{.title-ref}\_\_ |
| w.archlinux.org/) |                        |                        |
|                   | \_\_                   | \_\_                   |
|                   | [python-numpy-arch](   | [python-scipy-arch](   |
|                   | https://www.archlinux. | https://www.archlinux. |
|                   | org/packages/?q=numpy) | org/packages/?q=scipy) |
+-------------------+------------------------+------------------------+
| [Debian           | [python-               | [python-               |
| GNU/Linux](http:/ | numpy]{.title-ref}\_\_ | scipy]{.title-ref}\_\_ |
| /www.debian.org/) |                        |                        |
|                   | \_\_                   | \_\_                   |
|                   | [python-numpy          | [python-scipy          |
|                   | -debian](https://packa | -debian](https://packa |
|                   | ges.debian.org/search? | ges.debian.org/search? |
|                   | keywords=python-numpy) | keywords=python-scipy) |
+-------------------+------------------------+------------------------+
| [Ubuntu           | [python-               | [python-               |
| Linux](http:/     | numpy]{.title-ref}\_\_ | scipy]{.title-ref}\_\_ |
| /www.ubuntu.com/) |                        |                        |
|                   | \_\_                   | \_\_                   |
|                   | [python-nump           | [python-scip           |
|                   | y-ubuntu](http://packa | y-ubuntu](http://packa |
|                   | ges.ubuntu.com/search? | ges.ubuntu.com/search? |
|                   | keywords=python-numpy) | keywords=python-scipy) |
+-------------------+------------------------+------------------------+
| [Fedora](https:   | [                      | [                      |
| //getfedora.org/) | numpy]{.title-ref}\_\_ | scipy]{.title-ref}\_\_ |
|                   |                        |                        |
|                   | \_\_                   | \_\_                   |
|                   | [numpy-fedora](ht      | [scipy-fedora](ht      |
|                   | tps://apps.fedoraproje | tps://apps.fedoraproje |
|                   | ct.org/packages/numpy) | ct.org/packages/scipy) |
+-------------------+------------------------+------------------------+
| [                 | [n                     | [s                     |
| Fink](http://www. | umpy-py27](http://pdb. | cipy-py27](http://pdb. |
| finkproject.org/) | finkproject.org/pdb/pa | finkproject.org/pdb/pa |
|                   | ckage.php/numpy-py27), | ckage.php/scipy-py27), |
|                   | [                      | [                      |
|                   | numpy-py35](http://pdb | scipy-py35](http://pdb |
|                   | .finkproject.org/pdb/p | .finkproject.org/pdb/p |
|                   | ackage.php/numpy-py35) | ackage.php/scipy-py35) |
+-------------------+------------------------+------------------------+
| [FreeBSD          | [m                     | [science               |
| (Ports            | ath/py-numpy](https:// | /py-scipy](https://svn |
| )](https://www.fr | svnweb.freebsd.org/por | web.freebsd.org/ports/ |
| eebsd.org/ports/) | ts/head/math/py-numpy) | head/science/py-scipy) |
+-------------------+------------------------+------------------------+
| [Gentoo           | [dev-py                | [sc                    |
| Linux](https:/    | thon/numpy](https://pa | i-libs/scipy](https:// |
| /www.gentoo.org/) | ckages.gentoo.org/pack | packages.gentoo.org/pa |
|                   | ages/dev-python/numpy) | ckages/sci-libs/scipy) |
+-------------------+------------------------+------------------------+
| [M                | [py-numpy](http:/      | [py-scipy](http:/      |
| acPorts](http://w | /trac.macports.org/bro | /trac.macports.org/bro |
| ww.macports.org/) | wser/trunk/dports/pyth | wser/trunk/dports/pyth |
|                   | on/py-numpy/Portfile), | on/py-scipy/Portfile), |
+-------------------+------------------------+------------------------+
| [NetBSD           | [math/py-              | [math/py-              |
| (pkgsrc)](http:/  | numpy]{.title-ref}\_\_ | scipy]{.title-ref}\_\_ |
| /www.pkgsrc.org/) |                        |                        |
|                   | \_\_                   | \_\_                   |
|                   | [py-n                  | [py-s                  |
|                   | umpy-pkgsrc](http://pk | cipy-pkgsrc](http://pk |
|                   | gsrc.se/math/py-numpy) | gsrc.se/math/py-scipy) |
+-------------------+------------------------+------------------------+
| [Op               | [                      | [                      |
| enSUSE](https://w | python-numpy](http://s | python-scipy](http://s |
| ww.opensuse.org/) | oftware.opensuse.org/s | oftware.opensuse.org/s |
|                   | earch?q=python-numpy), | earch?q=python-scipy), |
|                   | [python-nump           | [python-scip           |
|                   | y-devel](http://softwa | y-devel](http://softwa |
|                   | re.opensuse.org/search | re.opensuse.org/search |
|                   | ?q=python-numpy-devel) | ?q=python-scipy-devel) |
+-------------------+------------------------+------------------------+
| [Slackware        | [numpy                 | [scipy                 |
| Linux](http://ww  | (slackbuilds.org)](h   | (slackbuilds.org)](h   |
| w.slackware.com/) | ttps://slackbuilds.org | ttps://slackbuilds.org |
|                   | /result/?search=numpy) | /result/?search=scipy) |
+-------------------+------------------------+------------------------+
-->
