Developer Zone
==============

We need your help!
------------------

This is a distributed, volunteer project and we welcome additional
contributors. If you're keen to help out, a good start is to monitor
the :doc:`mailing lists <mailing-lists>`. You'll soon begin to
recognize the areas where your assistance and expertise can make a
difference.

Steering Committee
------------------

* Jarrod Millman
* Eric Jones
* Robert Kern
* Travis Oliphant
* Stefan van der Walt

The purpose of this group is to ensure coherency in the SciPy library and
advocate its progression. It organizes doc-days, bug-days, coding sprints, and
assists with organizing the SciPy conference. It also serves to resolve
questions that come up regarding the future of SciPy.

Source Code
-----------

Make contributions (e.g. code patches), feature requests and file bug
reports by submitting a issues or pull requests on the Github pages
linked below. For any bigger changes, discussion on the mailing lists
is recommended even before starting.

Useful information on how to contribute new features to SciPy is
contained in `HACKING.txt
<https://github.com/scipy/scipy/blob/master/HACKING.rst.txt>`__,
please read it.

Note that NumPy contains the most basic numerical functionality, and
SciPy is layered on top of NumPy to provide a much wider range of
capability. You need NumPy for SciPy to work.

+-------+-------------------------+------------------------------------------+
| NumPy | Code repository         | http://github.com/numpy/numpy            |
|       +-------------------------+------------------------------------------+
|       | Timeline                | https://github.com/organizations/numpy   |
+-------+-------------------------+------------------------------------------+
| SciPy | Code repository         | http://github.com/scipy/scipy            |
|       +-------------------------+------------------------------------------+
|       | Timeline                | https://github.com/organizations/scipy   |
+-------+-------------------------+------------------------------------------+

Interested people can get repository write access as well.  This usually 
requires a developer "vouching" for you, which happens more easily if you 
already made a number of patch contributions.

.. _packaging:

Packaging
---------

For the majority of users who do not want to build the code from source, binary
installers that "just work" are the key to using SciPy. Producing these after
the coding is finished is the Packaging Team's job.

Making Source and Binary Releases
#################################

A releasable tarball gets made from the sources following a straightforward
procedure (see http://projects.scipy.org/numpy/wiki/MakingReleases ). To make
an official release to the community, the release manager typically
makes a series of test releases and announces them on the
mailing lists. After getting feedback, the release manager makes a final release,
posts it, and announces it on the mailing lists.

Getting Releases Into Distribution
##################################

Linux distributions and many others pick up our packages and deliver them to
users as part of larger collections.
