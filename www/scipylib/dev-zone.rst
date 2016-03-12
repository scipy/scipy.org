Developer Zone
==============

We need your help!
------------------

This is a distributed, volunteer project and we welcome additional
contributors. If you're keen to help out, a good start is to monitor
the :doc:`mailing lists <mailing-lists>`. You'll soon begin to
recognize the areas where your assistance and expertise can make a
difference.

Source Code
-----------

Make contributions (e.g. code patches), feature requests and file bug
reports by submitting a issues or pull requests on the Github pages
linked below. For any bigger changes, discussion on the mailing lists
is recommended even before starting.

Useful information on how to contribute new features to SciPy is
contained in `HACKING.txt
<https://github.com/scipy/scipy/blob/master/HACKING.rst.txt>`__,
please read it. Also, take a look at the `NumPy developer guide
<http://docs.scipy.org/doc/numpy/dev/>`__ for information on practical
issues.

If your contribution would be large, e.g. expanding functionality to a
scientific field not currently covered, it may make sense to at least
at first start it as an independent project. Check :doc:`/scikits`
about how to write independent add-on packages.

Note that NumPy contains the most basic numerical functionality, and
SciPy is layered on top of NumPy to provide a much wider range of
capabilities. You need NumPy for SciPy to work.

.. rst-class:: table table-bordered

+-------+-------------------------+------------------------------------------+
| NumPy | Code repository         | https://github.com/numpy/numpy           |
+-------+-------------------------+------------------------------------------+
| SciPy | Code repository         | https://github.com/scipy/scipy           |
+-------+-------------------------+------------------------------------------+

Interested people can get repository write access as well.  This usually 
requires a developer "vouching" for you, which happens more easily if you 
already made a number of patch contributions.

.. _packaging:

On packaging
------------

For the majority of users who do not want to build the code from source, binary
installers that "just work" are the key to using SciPy. Producing these after
the coding is finished is the Packaging Team's job.

Making Source and Binary Releases
#################################

A releasable tarball gets made from the sources following a straightforward
procedure (see `HOWTO_RELEASE.txt <https://github.com/numpy/numpy/blob/master/doc/HOWTO_RELEASE.rst.txt>`_). To make
an official release to the community, the release manager typically
makes a series of test releases and announces them on the
mailing lists. After getting feedback, the release manager makes a final release,
posts it, and announces it on the mailing lists.

Getting Releases Into Distribution
##################################

Linux distributions and many others pick up our packages and deliver them to
users as part of larger collections.
