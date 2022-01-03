---
title: Developer zone
sidebar: false
---

# We need your help!

This is a distributed, volunteer project and we welcome additional
contributors. If you\'re keen to help out, a good start is to monitor
the [mailing lists]({{< ref "/mailing-lists" >}}) and
[SciPy library bug
         reports](https://github.com/scipy/scipy/issues).
You\'ll soon begin to recognize the areas where your assistance and
expertise can make a difference.

# Source code

Make contributions (e.g., code patches), feature requests, and file bug
reports by submitting issues or pull requests on the GitHub pages linked
below. For any bigger changes, discussion on the mailing lists is
recommended even before starting.

Useful information on how to contribute new features to SciPy is
contained in
[HACKING.txt](https://github.com/scipy/scipy/blob/main/HACKING.rst.txt),
please read it. Also, take a look at the [NumPy developer
guide](http://docs.scipy.org/doc/numpy/dev/) for information on
practical issues.

If your contribution would be large, e.g., expanding functionality to a
scientific field not currently covered, it may make sense to at least at
first start it as an independent project.

Note that NumPy contains the most basic numerical functionality, and
SciPy is layered on top of NumPy to provide a much wider range of
capabilities. You need NumPy for SciPy to work.

  ------- ----------------------- ---------------------------------------
  NumPy   Code repository         <https://github.com/numpy/numpy>

  SciPy   Code repository         <https://github.com/scipy/scipy>
  ------- ----------------------- ---------------------------------------

# On packaging

For the majority of users who do not want to build the code from source,
binary installers that \"just work\" are the key to using SciPy.
Producing these after the coding is finished is the Packaging Team\'s
job.

## Making Source and Binary Releases

A releasable tarball gets made from the sources following a
straightforward procedure (see
[core-dev\releasing.rst.inc](http://scipy.github.io/devdocs/dev/core-dev/index.html#making-a-scipy-release)).
To make an official release to the community, the release manager
typically makes a series of test releases and announces them on the
mailing lists. After getting feedback, the release manager makes a final
release, posts it, and announces it on the mailing lists.

## Getting Releases Into Distribution

Linux distributions and many others pick up our packages and deliver
them to users as part of larger collections.
