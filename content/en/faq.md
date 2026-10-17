---
title: Frequently Asked Questions
sidebar: false
---

## What is SciPy?

SciPy is a set of open source (BSD licensed) scientific and numerical
tools for Python. It currently supports special functions, integration,
ordinary differential equation (ODE) solvers, gradient optimization,
parallel programming tools, an expression-to-C++ compiler for fast
execution, and others. A good rule of thumb is that if it\'s covered in
a general textbook on numerical computing (for example, the well-known
Numerical Recipes series), it\'s probably implemented in SciPy.

## How much does it cost?

SciPy is freely available. It is distributed as open source software,
meaning that you have complete access to the source code and can use it
in any way allowed by its liberal BSD license.

## What are SciPy\'s licensing terms?

SciPy\'s license is free for both commercial and non-commercial use, per
the terms of the BSD license
[here](https://github.com/scipy/scipy/blob/main/LICENSE.txt).

## How can SciPy be fast if it is written in an interpreted language like Python?

Actually, the time-critical loops are usually implemented in C or C++.
Some of the newer contributions to SciPy
are either written entirely or wrapped with
[Cython](https://cython.org/) or [Pythran](https://pythran.readthedocs.io).

A second answer is that for difficult problems, a better algorithm can
make a tremendous difference in the time it takes to solve a problem.
So, using SciPy\'s built-in algorithms may be much faster than a simple
algorithm coded in C.

## I\'ve found a bug. What do I do?

The SciPy development team works hard to make SciPy as reliable as
possible, but, as in any software product, bugs do occur. If you find
bugs that affect your software, please tell us by entering a ticket in
the [SciPy bug tracker](https://github.com/scipy/scipy/issues).

## How can I get involved in SciPy?

Head to our [community](/community) page.
We are keen for more people to help out writing code,
tests, documentation, and helping out with the website.

## Is there commercial support available?

Yes, commercial support is offered for SciPy by a number of companies,
for example [Anaconda](https://www.anaconda.com),
[Enthought](https://www.enthought.com), and
[Quansight](https://www.quansight.com).

# NumPy vs. SciPy vs. other packages

## What is the difference between NumPy and SciPy?

In an ideal world, NumPy would contain nothing but the array data type
and the most basic operations: indexing, sorting, reshaping, basic
elementwise functions, etc. All numerical code would reside in SciPy.
However, one of NumPy\'s important goals is compatibility, so NumPy
tries to retain all features supported by either of its predecessors.
Thus, NumPy contains some linear algebra functions and Fourier
transforms, even though these more properly belong in SciPy. In any
case, SciPy contains more fully-featured versions of the linear algebra
modules, as well as many other numerical algorithms. If you are doing
scientific computing with Python, you should probably install both NumPy
and SciPy. Most new features belong in SciPy rather than NumPy.

## How do I make plots using SciPy?

Plotting functionality is beyond the scope of SciPy, which
focus on numerical objects and algorithms. Several packages exist that
integrate closely with SciPy to produce high quality plots,
such as the immensely popular [Matplotlib](https://matplotlib.org). Other
popular options are [Bokeh](https://bokeh.pydata.org/en/latest),
[Plotly](https://plot.ly) and [Altair](https://altair-viz.github.io).

## How do I make 3D plots/visualizations using SciPy?

Like 2D plotting, 3D graphics is beyond the scope of SciPy,
but just as in the 2D case, packages exist that integrate with SciPy.
[Matplotlib](https://matplotlib.org) provides basic 3D plotting in the
`mplot3d` subpackage, whereas
[Mayavi](https://docs.enthought.com/mayavi/mayavi/) provides a wide
range of high-quality 3D visualization features, utilizing the powerful
[VTK](https://www.vtk.org/) engine.

# Python version support

## Do NumPy and SciPy still support Python 2.7?

The last version of NumPy to support Python 2.7 is NumPy 1.16.x. The
last SciPy version to do so is SciPy 1.2.x. The first release of NumPy
to support Python 3.x was NumPy 1.5.0. Python 3 support in SciPy was
introduced in SciPy 0.9.0.

# Where to get help

See the [community](/community) page.
