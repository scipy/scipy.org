This page indexes add-on software and other resources relevant to SciPy,
categorized by scientific discipline or computational topic.  It is intended to
be exhaustive.  If you know of an unlisted resource, see About This Page,
below.

About This Page
===============

As the links in each section become numerous, they may be placed on separate
pages of their own, so be sure to visit those pages as well, if they're
relevant to your search. The listings are roughly organized by topic, with
introductory resources first, more general topics next, and discipline-specific
resources last.

Unless otherwise indicated, all packages listed here are provided under some
form of open source license.

If you distribute or know of a resource that is not listed here, please add a
listing. Make an account, login, visit the wiki. You'll now see an "edit" tab
at the top. Click it and go to it. If you need help, there is a help link at
the top of the page. Please follow the general format of the existing listings.
Be as brief as you can, but make sure you include in your text a link to the
resource's home page and some keywords that potential users might search for to
find the resource. Finally, when you have saved, check out your listing and
test the link to make sure it works.

If you wish to restructure the page (e.g., break out a section into its own
page, change the section headings, etc.), please propose the idea to the
`SciPy-dev@scipy.org` mailing list first and get community feedback.

General Python resources
========================

* `Python.org <http://www.python.org>`_: official website for the Python
  language. It includes links to the 
  `current documentation and tutorials <http://www.python.org/doc/>`_, 
  `downloads for many platforms <http://www.python.org/download/>`_, the Python
  `mailing lists and newsgroups <http://www.python.org/community/lists.html>`_,
  and much more.

* `Python Package Index (PyPI) <http://pypi.python.org/pypi/>`_: the official
  Python.org package index (the Python standard distribution system, distutils,
  includes support for automatically registering packages with PyPI).

* `The Python Cookbook <http://aspn.activestate.com/ASPN/Python/Cookbook/>`_: a
  community-driven collection of code snippets for many tasks.

* `The O'Reilly Python DevCenter <http://www.onlamp.com/python/>`_: O'Reilly
  is widely regarded as one of the best computing book publishers, and they
  maintain a resource center devoted to Python. This includes both their
  publications and articles on Python-related topics.



Tutorials and texts
===================

Some generic Python/programming tutorials:
------------------------------------------

* `The Official Python Tutorial <http://docs.python.org/tutorial/>`_ from
  Python.org.

* `Dive Into Python <http://diveintopython.org/>`_: an online (print version
  available) complete book on the Python language, covering topics from
  introductory to fairly advanced.

* `Learning to Program <http://www.freenetpages.co.uk/hp/alan.gauld/>`_:
  a beginner's tutorial.

* `The Python Learning Foundation <http://www.awaretek.com/plf.html>`_: a large
  collection of Python links.

Scientific computing with Python
--------------------------------

* A `tutorial <http://www.scipy.org/wikis/topical_software/Tutorial>`_ focused
  on interactive data analysis] for astronomy, but of generic utility to most
  scientific users. Developed at the STSCI, available for free download
  including all data files necessary to run the examples.

* `Konrad Hinsen's Python page <http://starship.python.net/crew/hinsen/>`_:
  contains a number of introductions and tutorials to Python, geared towards
  the needs of scientists.

* `Jacek Generowicz's Python Courses. <http://jacek.home.cern.ch/jacek/python-course>`_

* `Python Scripting for Computational Science 
  <http://www.springeronline.com/sgw/cda/frontpage/0,11855,5-115-22-17627636-0,00.html>`_:
  not free, this is a Springer book.

* `Python/Matlab/Octave/Scilab/R/Gnuplot/IDL/Axiom
  <http://mathesaurus.sourceforge.net>`_ cross-reference by Vidar
  Gundersen.

* `Software Carpentry <http://www.swc.scipy.org>`_ is an open source course on
  basic software development skills for people with backgrounds in science,
  engineering, and medicine.

* `A tutorial for SciPy <http://www.rexx.com/~dkuhlman/SciPy_course_01.html>`_
  by Dave Kuhlman ( dkuhlman@rexx.com ).

Working environments
====================

* `IPython <http://ipython.scipy.org>`_: an interactive environment with many
  features geared towards efficient work in typical scientific usage. It
  borrows many ideas from the interactive shells of Mathematica, IDL, Matlab
  and similar packages. It includes special support for the matplotlib and
  gnuplot plotting packages. IPython also has support for (X)Emacs, to be used
  as a full IDE with IPython as the interactive Python shell.

* `Pydee <http://code.google.com/p/pydee/>`_: A Qt based IDE suited to
  developing scientific applications.  Includes integrated and external python
  consoles, code checking built into the editor, a graphical class browser and
  full support for matplotlib graphs.

* `Pymacs <http://pymacs.progiciels-bpi.ca/>`_: a tool which, once started from
  Emacs, allows both-way communication between Emacs Lisp and Python.

* `Pythonika <http://dkbza.org/pythonika.html>`_: A MathLink module for
  Mathematica allowing to write Python code within a Mathematica notebook and
  transparently translating objects between the two.

* `tmPython <http://dkbza.org/tmPython.html>`: the `TeXmacs
  <http://www.texmacs.org/>`_ Python plugin. It provides a 'Mathematica
  Notebook' styled interface to Python from within TeXmacs. Blocks of code can
  be run independently of their order, and full multiline blocks, i.e.,
  function remain visible and easily modifiable.

* links centered on the `ubuntu <https://wiki.ubuntu.com/UbuntuScientists>`
  distribution.

Science: basic tools
====================

These are links which cover basic tools generally useful for scientific work in
almost any area. Many of the more specific packages listed later depend on one
or more of these.

* SciPy: umbrella project which includes a variety of high level science and
  engineering modules together as a single package. SciPy includes modules for
  linear algebra (including wrappers to BLAS and LAPACK), optimization,
  integration, special functions, FFTs, signal and image processing, genetic
  algorithms, ODE solvers, and others.

* `NumPy <http://numpy.scipy.org/>`_ is the package SciPy builds on and
  requires as a pre-requisite.  It is a hybrid of both Numeric and Numarray
  incorporating features of both.  If you are new to Numeric computing with
  Python, you should use NumPy.

* `Numerical Python <http://numeric.scipy.org/>`_ and
  `Numarray <http://www.stsci.edu/resources/software_hardware/numarray>`_:
  these packages are the predecessos for NumPy.  Numerical Python is now
  deprecated.  According to Perry Greenfield at STSCI which funded Numarray
  development.  It will be supported until about the end of 2007 (supported
  provided mainly by Todd Miller) while all code based on Numarray is ported to
  use NumPy.

* `ScientificPython <http://dirac.cnrs-orleans.fr/ScientificPython/>`: another
  collection of Python modules for scientific computing. It includes basic
  geometry (vectors, tensors, transformations, vector and tensor fields),
  quaternions, automatic derivatives, (linear) interpolation, polynomials,
  elementary statistics, nonlinear least-squares fits, unit calculations,
  Fortran-compatible text formatting, 3D visualization via VRML, and two Tk
  widgets for simple line plots and 3D wireframe models. There are also
  interfaces to the netCDF library (portable structured binary files), to MPI
  (Message Passing Interface, message-based parallel programming), and to
  BSPlib (Bulk Synchronous Parallel programming). Much of this functionality
  has been incorporated into SciPy, but not all.

* `Numexpr <http://code.google.com/p/numexpr/>`_: a package that accepts NumPy
  array expressions as strings, rewrites them to optimize execution time and
  memory use, and executes them much faster than NumPy usually can.

* `PyGSL <http://pygsl.sourceforge.net/>`_: a python interface for the
  `GNU scientific library (gsl) <http://www.gnu.org/software/gsl>`_.

* `GMPY <http://gmpy.sourceforge.net/>`_: a python interface for the
  `GNU Multiple Precision library (gmp) <http://www.swox.com/gmp>`_.

* `RPy <http://rpy.sourceforge.net/>`_: a very simple, yet robust, Python
  interface to the `R Programming Language <http://www.r-project.org/>`_. It
  can manage all kinds of R objects and can execute arbitrary R functions
  (including the graphic functions). All errors from the R language are
  converted to Python exceptions. Any module installed for the R system can be
  used from within Python.

* `Enthought Python Distribution
  <http://www.enthought.com/products/epddownload.php>`_: for Windows, OSX, and
  RedHat users. This is a very useful download, in a single package, of a
  number of different tools for scientific computing (including many listed in
  this page). This saves users the hassles of manually building all of these
  packages, some of which can be fairly difficult to get to work.  EPD is free
  for academic and non-profit use, but fee-based for commercial and
  governmental use.

* `Python(x,y) <http://code.google.com/p/pythonxy/>`_: A complete distribution
  for Windows or Ubuntu users containing all the packages needed for full
  Python distribution for scientific development, including Qt based GUI
  design.  Also includes Pydee, a Python IDE suited to scientific development.

* `PyROOT <http://cern.ch/wlav/pyroot>`_, a run-time based python binding to
  the `ROOT <http://root.cern.ch>`_ framework: ROOT is a complete system for
  development of scientific applications, from math and graphics libraries, to
  efficient storage and reading of huge data sets, to distributed analysis. The
  python bindings are based on run-time type information, such that you can add
  your own C++ classes on the fly to the system with a one-liner and
  down-casting as well as pointer manipulations become unnecessary. Using RTTI
  keeps memory and call overhead down to a minimum, resulting in bindings that
  are more light-weight and faster than any of the "standard" bindings
  generators.

* `PAIDA <http://paida.sourceforge.net/>`_, a pure Python scientific analysis
  tool including `AIDA <http://aida.freehep.org/>`_ interface.

* `PyDX <http://gr.anu.edu.au/~sdburton/pydx/>`_, automatic differentiation,
  arbitrary precision arithmetic, interval arithmetic, interval ODE solver,
  differential geometry constructs.

* `bvp <http://www.iki.fi/pav/software/bvp/index.html>`_, a Python wrapper for
  a modified version of the `COLNEW <http://netlib.org/ode/colnew.f>`_ boundary
  value problem solver. (COLNEW has a non-commercial-only type license)

* `NetworkX <https://networkx.lanl.gov/>`_, Python package for the creation,
  manipulation, and study of the structure, dynamics, and function of complex
  networks.

* `PyAMG <http://www.pyamg.org/>`_, a library of Algebraic Multigrid (AMG)
  solvers for large scale linear algebra problems.

* `PyTrilinos <http://trilinos.sandia.gov/packages/pytrilinos/index.html>`_
  Python interface to Trilinos, a framework for solving large-scale, complex
  multi-physics engineering and scientific problems.

Running Code Written In Other Languages
=======================================

Wrapping C, C++, and FORTRAN Codes
----------------------------------

* `SWIG <http://www.swig.org/>`_: SWIG is a software development tool that
  connects programs written in C and C++ with a variety of high-level
  programming languages. SWIG is primarily used with common scripting languages
  such as Perl, Python, Tcl/Tk and Ruby. The
  `SWIG Typemaps <https://geodoc.uchicago.edu/climatewiki/SwigTypemaps>` page
  SWIG modifications for usage with Numeric arrays.

* `Boost.Python <http://www.boost.org/libs/python/doc/index.html>`_: a C++
  library which enables seamless interoperability between C++ and Python. The
  `PythonInfo Wiki <http://wiki.python.org/moin/boost.python>`_ contains a
  good howto reference. `C++-sig <http://www.python.org/sigs/c++-sig/>`_ at
  python.org is devoted to Boost and you can subscribe to their mailing list.

* `F2PY <http://cens.ioc.ee/projects/f2py2e/>`_: provides a connection between
  the Python and Fortran languages. F2PY is a Python extension tool for
  creating Python C/API modules from (handwritten or F2PY generated) signature
  files (or directly from Fortran sources).

* ["Weave"]: allows the inclusion of C/C++ within Python code. It has
  facilities for automatic creation of C/C++ based Python extension modules, as
  well as for direct inlining of C/C++ code in Python sources. The latter
  combines the scripting flexibility of Python with the execution speed of
  compiled C/C++, while handling automatically all module generation details.

* `Pyrex <http://www.cosc.canterbury.ac.nz/~greg/python/Pyrex/>`: Pyrex lets
  you write code that mixes Python and C data types any way you want, and
  compiles it into a C extension for Python. See also `Cython <http://cython.org>`_.

* `SIP <http://www.riverbankcomputing.co.uk/sip/>`_: a tool for automatically
  generating `Python <http://www.python.org/>`_ bindings for C and C++
  libraries. SIP was originally developed in 1998 for
  `PyQt <http://www.riverbankcomputing.co.uk/pyqt/>`_ ---the Python bindings
  for the Qt GUI toolkit---but is suitable for generating bindings for any C or
  C++ library.

* `PyCxx <http://cxx.sourceforge.net>`_: CXX/Objects is a set of C++
  facilities to make it easier to write Python extensions. The chief way in
  which PyCXX makes it easier to write Python extensions is that it greatly
  increases the probability that your program will not make a
  reference-counting error and will not have to continually check error returns
  from the Python C API.

* `ctypes <http://starship.python.net/crew/theller/ctypes>`_: a package to
  create and manipulate C data types in Python, and to call functions in
  dynamic link libraries/shared dlls. It allows wrapping these libraries in
  pure Python.

* `Instant
  <http://heim.ifi.uio.no/~kent-and/software/Instant/doc/Instant.html>` Instant
  is a Python module that allows for instant inlining of C and C++ code in
  Python. It is a small Python module built on top of SWIG.

Converting Code From Other Array Languages
------------------------------------------

* `IDL <http://software.pseudogreen.org/i2py/>`_: The Interactive Data Language
  from ITT

* `Matlab <http://code.google.com/p/pym>`_: from the Mathworks (check the
  "Source" tab, or `browse <http://pym.googlecode.com/svn/trunk/>`_).

Plotting, data visualization, 3-D programming
=============================================

Tools with a (mostly) 2-D focus
-------------------------------

* `matplotlib <http://matplotlib.sourceforge.net>`_: a Python 2-D plotting
  library which produces publication quality figures using in a variety of
  hardcopy formats (PNG, JPG, PS, SVG) and interactive GUI environments (WX,
  GTK, Tkinter, FLTK, Qt) across platforms. matplotlib can be used in python
  scripts, interactively from the python shell (ala matlab or mathematica), in
  web application servers generating dynamic charts, or embedded in GUI
  applications. For interactive use, `IPython <http://ipython.scipy.org/>`_
  provides a special mode which integrates with matplotlib. See the
  [:Cookbook/Matplotlib:matplotlib cookbook] for recipes.

* `Chaco <http://code.enthought.com/projects/chaco/>`_: Chaco is a Python
  toolkit for producing interactive plotting applications. Chaco applications
  can range from simple line plotting scripts up to GUI applications for
  interactively exploring different aspects of interrelated data. As an
  open-source project being developed by Enthought, Chaco leverages other
  Enthought technologies such as Kiva, Enable, and Traits to produce highly
  interactive plots of publication quality.  See the recent `SciPy presentation
  slides
  <http://code.enthought.com/projects/files/chaco_SciPy2006/chaco_talk.html>`
  for an introduction.

* `PyQwt <http://pyqwt.sourceforge.net>`_: a set of Python bindings for the
  `Qwt <http://qwt.sourceforge.net/>`_ C++ class library which extends the `Qt
  <http://www.trolltech.com/>`_ framework with widgets for scientific and
  engineering applications. It provides a widget to plot 2-dimensional data and
  various widgets to display and control bounded or unbounded floating point
  values.

* `HippoDraw <http://www.slac.stanford.edu/grp/ek/hippodraw>`_:a highly
  interactive data analysis environment. It is written in C++ with the `Qt
  <http://doc.trolltech.com/3.3/qt.html>`_ library from `Trolltech
  <http://www.trolltech.com/>`_. It includes Python bindings, and has a number
  of features for the kinds of data analysis typical of High Energy physics
  environments, as it includes native support for `ROOT
  <http://root.cern.ch/>`_ NTuples. It is well optimized for real-time data
  collection and display.

* `Biggles <http://biggles.sourceforge.net/>`_: a module for creating
  publication-quality 2D scientific plots. It supports multiple output formats
  (postscript, x11, png, svg, gif), understands simple TeX, and sports a
  high-level, elegant interface.

* `Gnuplot.py <http://gnuplot-py.sourceforge.net>`_: a Python package that
  interfaces to `gnuplot <http://www.gnuplot.info/>`_, the popular open-source
  plotting program. It allows you to use gnuplot from within Python to plot
  arrays of data from memory, data files, or mathematical functions. If you use
  Python to perform computations or as `glue' for numerical programs, you can
  use this package to plot data on the fly as they are computed.
  `IPython <http://ipython.scipy.org/>`_ includes additional enhancements to
  Gnuplot.py (but which require the base package) to make it more efficient in
  interactive usage.

* `Pylab console
  <http://www.loria.fr/~rougier/index.php?n=Software.Software#pylab>`: a python
  console using GTK that allows to display matplotlib figures inline. Any call
  to plot, imshow, matshow or show functions actually produces a Figure that is
  inserted within the console.

* `Graceplot <http://www.idyll.org/~n8gray/code/>`_:a Python interface to the
  `Grace <http://plasma-gate.weizmann.ac.il/Grace/>` 2d plotting program.

* `disipyl <http://kim.bio.upenn.edu/~pmagwene/disipyl.html>`_: an
  object-oriented wrapper around the `DISLIN
  <http://www.linmpi.mpg.de/dislin/>`_ plotting library, written in the
  computer language Python. disipyl provides a set of classes which represent
  various aspects of DISLIN plots, as well as providing some easy to use
  classes for creating commonly used plot formats (e.g. scatter plots,
  histograms, 3-D surface plots). A major goal in designing the library was to
  facilitate interactive data exploration and plot creation.

* `OpenCv <http://www.intel.com/technology/computing/opencv/index.htm>`_:
  mature library for Image Processing, Structural Analysis, Motion Analysis and
  Object Tracking, and Pattern Recognition that has recently added Swig based
  Python bindings. Windows and Linux-RPM packages available. An open source
  project originally sponsored by Intel, can be coupled with Intel Performance
  Primitive package (IPP) for increased performance. Has a Wiki
  `here <http://opencvlibrary.sourceforge.net/>`_

* `PyChart <http://home.gna.org/pychart/>`_: a library for creating
  Encapsulated Postscript, PDF, PNG, or SVG charts. It currently supports line
  plots, bar plots, range-fill plots, and pie charts.

* `pygame <http://www.pygame.org/>`_: though intended for writing games using
  Python, its general-purpose multimedia libraries definitely have other
  applications in visualization.

* `PyNGL <http://www.pyngl.ucar.edu/>`_: a Python module for creating
  publication-quality 2D visualizations, with emphasis in the geosciences.
  PyNGL can create contours, vectors, streamlines, XY plots, and overlay any
  one of these on several map projections. PyNGL's graphics are based on the
  same high-quality graphics as the NCAR Command Language and NCAR Graphics.

* `Veusz <http://home.gna.org/veusz/>`_ : a scientific plotting package written
  in Python. It uses `PyQt <http://www.riverbankcomputing.co.uk/pyqt/>`_ and
  `Numarray <http://www.stsci.edu/resources/software_hardware/numarray>`_.
  Veusz is designed to produce publication-ready Postscript output.

* `ppgplot <http://efault.net/npat/hacks/ppgplot>`_: a Python module that
  provides bindings to the PGPLOT graphics subroutine library popular among
  astronomers (v 1.3 works with Numeric and numarray, but porting to NumPy is
  very easy).

Data visualization (mostly 3-D, surfaces and volumetric rendering)
------------------------------------------------------------------

* `MayaVi <http://mayavi.sourceforge.net/>`_: a free, easy to use scientific
  data visualizer. It is written in `Python <http://www.python.org/>`_ and uses
  the amazing `Visualization Toolkit (VTK) <http://www.vtk.org/>`_ for the
  graphics. It provides a GUI written using `Tkinter
  <http://www.pythonware.com/library/tkinter/introduction/index.htm>`_. MayaVi
  supports visualizations of scalar, vector and tensor data in a variety of
  ways, including meshes, surfaces and volumetric rendering.  MayaVi can be
  used both as a standalone GUI program and as a Python library to be driven by
  other Python programs.

* `Mayavi2 <http://code.enthought.com/projects/mayavi>`_ is the successor of
  MayaVi. It is vastly superior to MayaVi1, has a Pythonic API, supports NumPy
  arrays transparently, provides a powerful application, reusable library and a
  powerful pylab like equivalent called mlab for rapid 3D plotting.

* `Py-OpenDX <http://people.freebsd.org/~rhh/py-opendx>`_ : Py-OpenDX is a
  Python binding for the `OpenDX <http://www.opendx.org/>`_ API. Currently only
  the DXLink library is wrapped, though this may be expanded in the future to
  cover other DX libraries such as CallModule and DXLite.

* `Py2DX <http://www.psc.edu/~eschenbe>`_: Py2DX is a Python binding for the
  `OpenDX <http://www.opendx.org/>`_ API based on Py-OpenDX. Mavis is a
  visualisation software built using this interfacce and the OpenDX
  library.(Rjoy)

* `IVuPy <http://ivupy.sourceforge.net/>`_: (I-View-Py) serves to develop
  Python programs for 3D visualization of huge data sets using Qt and PyQt.
  IVuPy interfaces more than 600 classes of two of the
  `Coin3D <http://www.coin3d.org/>`_ C++ libraries to Python, integrates very
  well with PyQt, and is fun to program. Coin3D is a
  `scene graph <http://www.tomshardware.se/column/20000110/>`_ library, and is
  optimized for speed. In comparison with `VTK <http://www.vtk.org/>`_, Coin3D
  is more low level and lacks many of VTK's advanced visualization and imaging
  algorithms.

* `Pivy <http://pivy.coin3d.org/>`_ is another Coin3D binding for Python. Pivy
  allows the development of Coin3D applications and extensions in Python,
  interactive modification of Coin3D programs from within the Python
  interpreter at runtime and incorporation of Scripting Nodes into the scene
  graph which are capable of executing Python code and callbacks. Installation
  instructions for Ubuntu 7.04 using the latest Coin (v 2.4.6) and SoQt (v
  1.4.1) can be found here `Pivy Wiki <http://pivy.coin3d.org/wiki/BuildInstructions>`.

* `Mat3D <http://www.scipy.org/WilnaDuToit>` provides a few routines for basic
  3D plotting. It makes use of OpenGL and is written in Python and Tk. One can
  interact (rotate and zoom) with with the generated graph and the view can
  be saved to an image.

* `S2PLOT <http://astronomy.swin.edu.au/s2plot/>`_ is a three-dimensional
  plotting library based on OpenGL with support for standard and enhanced
  display devices. The S2PLOT library was written in C and can be used with C,
  C++, FORTRAN and Python programs on GNU/Linux, Apple/OSX and GNU/Cygwin
  systems. The library is currently closed-source, but free for commercial and
  academic use. They are hoping for an open source release towards the end of
  2008.

LaTeX, PostScript, diagram generation
-------------------------------------

* `PyX <http://pyx.sourceforge.net/>`_: a package for the creation of
  encapsulated PostScript figures. It provides both an abstraction of
  PostScript and a TeX/LaTeX interface. Complex tasks like 2-D and 3-D plots
  in publication-ready quality are built out of these primitives.

* `Pyepix <http://claymore.engineer.gvsu.edu/~steriana/Python/index.html>`: a
  wrapper for the `ePiX
  <http://mathcs.holycross.edu/~ahwang/current/ePiX.html>` plotting library for
  LaTeX.

* `pydot <http://dkbza.org/pydot.html>`_: a Python interface to `Graphviz's
  <http://www.research.att.com/sw/tools/graphviz/>`_ Dot language.  It provides
  an interface for creating both directed and non directed graphs from Python.
  Currently all attributes implemented in the Dot language are supported (up to
  Graphviz 1.10). Output can be inlined in Postscript into interactive
  scientific environments like `TeXmacs <http://www.texmacs.org/>`_, or output
  in any of the format's supported by the Graphviz tools dot, neato, twopi.

* `Dot2TeX <http://www.fauskes.net/code/dot2tex>`_: Another tool in the
  Dot/Graphviz/LaTeX family, this is a Graphviz to LaTeX converter.  The
  purpose of dot2tex is to give graphs generated by Graphviz a more LaTeX
  friendly look and feel. This is accomplished by converting xdot output from
  Graphviz to a series of PSTricks or PGF/TikZ commands.

* `pyreport <http://gael-varoquaux.info/computers/pyreport>`_: runs a script
  and captures the output (pylab graphics included). Generates a LaTeX or pdf
  report out of it, including litteral comments and pretty printed code.

Other 3-D programming tools
---------------------------

* `VPython <http://vpython.org>`_: a Python module that offers real-time 3D
  output, and is easily usable by novice programmers.

* `OpenRM Scene Graph: <http://www.openrm.org>`_ a developers toolkit that
  implements a scene graph API, and which uses OpenGL for hardware accelerated
  rendering. OpenRM is intended to be used to construct high performance,
  portable graphics and scientific visualization applications on
  Unix/Linux/Windows platforms.

* `Panda3D <http://www.etc.cmu.edu/panda3d>`_: an open source game and
  simulation engine.

* `Python Computer Graphics Kit: <http://cgkit.sourceforge.net>`_ a collection
  of Python modules that contain the basic types and functions required for
  creating 3D computer graphics images.

* `PyGeo <http://home.netcom.com/~ajs>`_: a Dynamic 3-D geometry laboratory.
  PyGeo may be used to explore the most basic concepts of Euclidean geometry
  at an introductory level, including by elementary schools students and their
  teachers. But is particularly suitable for exploring more advanced geometric
  topics --- such as projective geometry and the geometry of complex numbers.

* `Python 3-D software collection <http://www.vrplumber.com/py3d.py>`_: A small
  collection of pointers to Python software for working in three dimensions.

* `pythonOCC <http://www.pythonocc.org>`_: Python bindings for `OpenCascade
  <http://www.opencascade.org>`_, a 3D modeling & numerical simulation library.
  (`Related <http://qtocc.sourceforge.net/links-related.html>`_ projects)

* `PyGTS <http://pygts.sourceforge.net/>`_: a python package used to construct,
  manipulate, and perform computations on 3D triangulated surfaces. It is a
  hand-crafted and pythonic binding for the `GNU Triangulated Surface (GTS)
  Library <http://gts.sourceforge.net/>`_.

Optimization
============

* `OpenOpt <http://openopt.org>`_ (license: BSD) - numerical optimization
  framework with some own solvers and connections to lots of other. It allows
  connection of **any**-licensed software, while SciPy.optimize allows only
  copyleft-free one (like BSD, MIT). Other features are convenient standard
  interface for all solvers, `graphical output
  <http://openopt.org/graphical_output>`_, `automatic 1st derivatives check
  <http://trac.openopt.org/openopt/browser/OOPy/openopt/examples/checkDerivatives.py>`
  and much more. You can optimize `FuncDesigner
  <http://openopt.org/FuncDesigner>` models with `Automatic differentiation
  <http://en.wikipedia.org/wiki/Automatic_differentiation>`. OpenOpt website
  also hosts numerical optimization `forum <http://forum.openopt.org>`_.

* `CVXOPT <http://www.ee.ucla.edu/~vandenbe/cvxopt/>`_ (license: GPL3), a tool
  for convex optimization which defines its own matrix-like object and
  interfaces to FFTW, BLAS, and LAPACK.

Automatic differentiation
=========================

(not to be confused with Numerical differentiation via finite-differences
derivatives approximation and symbolic differentiation provided by Maxima,
SymPy etc, see wikipedia.org
`entry <http://en.wikipedia.org/wiki/Automatic_differentiation>`)

* `FuncDesigner <http://openopt.org/FuncDesigner>` - can use OpenOpt for
  numerical optimization

* `ScientificPython <http://dirac.cnrs-orleans.fr/ScientificPython>` - see
  modules Scientific.Functions.FirstDerivatives and
  Scientific.Functions.Derivatives

* `pycppad <http://www.seanet.com/~bradbell/pycppad/index.htm>`_ - wrapper for
  CppAD, second order forward/reverse

* `pyadolc <http://github.com/b45ch1/pyadolc>`_ - wrapper for ADOL-C, arbitrary
  order forward/reverse

Finite differences derivatives approximation
============================================

* `check_grad
  <http://www.scipy.org/doc/api_docs/SciPy.optimize.optimize.html#check_grad>`
  and
  `approx_fprime
  <http://www.scipy.org/doc/api_docs/SciPy.optimize.optimize.html#approx_fprime>`
  from SciPy.optimize

* `DerApproximator <http://openopt.org/DerApproximator>` - several stencils,
  trying to avoid NaNs, is used by `OpenOpt <http://openopt.org/OOFramework>`
  and `FuncDesigner <http://openopt.org/FuncDesigner>`

Data Storage / Database
=======================

* `PyTables <http://www.pytables.org>`_: PyTables is a hierarchical database
  package designed to efficiently manage very large amounts of data. It is
  built on top of the `HDF5 library <http://www.hdfgroup.org/HDF5>` and the
  `NumPy <http://numpy.scipy.org>`_ package.

* `pyhdf <http://pysclint.sourceforge.net/pyhdf>`_: pyhdf is a python interface
  to the NCSA `HDF4 <http://hdf.ncsa.uiuc.edu/hdf4.html>`_ library. Among the
  numerous components offered by HDF4, the following are currently supported by
  pyhdf: SD (Scientific Dataset), VS (Vdata), V (Vgroup) and HDF (common
  declarations).

* ["RSFormats"]

Parallel and distributed programming
====================================

For a brief discussion of parallel programming within NumPy/SciPy, see
ParallelProgramming.

* `PyMPI <http://sourceforge.net/projects/pympi>`_: Distributed Parallel
  Programming for Python! This package builds on traditional Python by enabling
  users to write distributed, parallel programs based on
  `MPI <http://www-unix.mcs.anl.gov/mpi/>`_ message passing primitives. General
  python objects can be messaged between processors.

* `Pypar <http://datamining.anu.edu.au/~ole/pypar>`_: Parallel Programming in
  the spirit of Python! Pypar is an efficient but easy-to-use module that
  allows programs/scripts written in the Python programming language to run in
  parallel on multiple processors and communicate using message passing. Pypar
  provides bindings to an important subset of the message passing interface
  standard MPI.

* `MPI for Python <http://mpi4py.scipy.org/>`_: Object Oriented Python bindings
  for the Message Passing Interface. This module provides MPI suport to run
  Python scripts in parallel. It is constructed on top of the MPI-1
  specification, but provides an object oriented interface which closely
  follows stantard MPI-2 C++ bindings. Any *picklable* Python object can be
  communicated. There is support for point-to-point (sends, receives) and
  collective (broadcasts, scatters, gathers) communications as well as group
  and communicator (inter, intra and topologies) management.

* `A discussion on Python and MPI
  <https://geodoc.uchicago.edu/climatewiki/DiscussPythonMPI>`: very useful
  discussion on this topic, carried at the
  `CSC Climate Wiki <https://geodoc.uchicago.edu/climatewiki>`_.

* `PyPVM <http://pypvm.sourceforge.net/>`_: A Python interface to Parallel
  Virtual Machine (`PVM <http://www.csm.ornl.gov/pvm/pvm_home.html>`_), a
  portable heterogeneous message-passing system. It provides tools for
  interprocess communication, process spawning, and execution on multiple
  architectures.

* Module Scientific.BSP in Konrad Hinsen's
  `ScientificPython <http://starship.python.net/~hinsen/ScientificPython/>`
  provides an experimental interface to the Bulk Synchronous Parallel (BSP)
  model of parallel programming (note the link to the BSP tutorial on the
  ScientificPython page). Module Scientific.MPI provides an MPI interface. The
  `BSP <http://www.bsp-worldwide.org/>`_ model is an alternative to MPI and PVM
  message passing model. It is said to be easier to use than the message
  passing model, and is guaranteed to be deadlock-free.

* `Pyro <http://pyro.sourceforge.net>`_: PYthon Remote Objects (Pyro) provides
  an object-oriented form of RPC. It is a Distributed Object Technology system
  written entirely in Python, designed to be very easy to use. Never worry
  about writing network communication code again, when using Pyro you just
  write your Python objects like you would normally. With only a few lines of
  extra code, Pyro takes care of the network communication between your objects
  once you split them over different machines on the network. All the gory
  socket programming details are taken care of, you just call a method on a
  remote object as if it were a local object!

* `PyXG <http://pyxg.scipy.org>`_: Object oriented Python interface to Apple's
  Xgrid.  PyXG makes it possible to submit and manage Xgrid jobs and tasks from
  within interactive Python sessions or standalone scripts.  It provides an
  extremely lightweight method for performing independent parallel tasks on a
  cluster of Macintosh computers.

* `Pyslice <http://pyslice.sourceforge.net>`_: Pyslice is a specialized
  templating system that replaces variables in a template data set with numbers
  taken from all combinations of variables. It creates a dataset from input
  template files for each combination of variables in the series and can
  optionally run a simulation or submit a simulation run to a gueue against
  each created data set.  For example: create all possible combination of
  datasets that represent the 'flow' variable with numbers from 10 to 20 by 2
  and the 'level' variable with 24 values taken from a normal distribution with
  a mean of 104 and standard deviation of 5.

* `Python::OpenCL <http://python-opencl.next-touch.com>`_: OpenCL is a standard
  for parallel programming on heterogeneous devices including CPUs, GPUs, and
  others processors. It provides a common language C-like language for
  executing code on those devices, as well as APIs to setup the computations.
  Python::OpenCL aims at being an easy-to-use Python wrapper around the OpenCL
  library.

Partial differential equation (PDE) solvers
===========================================

* `FiPy <http://www.ctcms.nist.gov/fipy>`_: [#fipy See entry in Miscellaneous]

* `SfePy <http://sfepy.org>`_: [#sfepy See entry in Miscellaneous]

* `Hermes <http://hpfem.org>`_: [#hermes hp-FEM solver, see entry in Miscellaneous]

Topic guides, organized by scientific field
===========================================

Astronomy
---------

* `AstroPy <http://www.scipy.org/wikis/topical_software/Astronomy>`: Central
  repository of information about Python and Astronomy and associated `mailing
  list <http://www.SciPy.net/mailman/listinfo/astropy>`.

* `PyFITS <http://www.stsci.edu/resources/software_hardware/pyfits>`_:
  interface to `FITS <http://www.cv.nrao.edu/fits/>`_ formatted files under the
  `Python <http://www.python.org/>`_ scripting language and `PyRAF
  <http://www.stsci.edu/resources/software_hardware/pyraf>`_, the Python-based
  interface to IRAF.

* `PyRAF <http://www.stsci.edu/resources/software_hardware/pyraf>`_: a new
  command language for running IRAF tasks that is based on the Python scripting
  language.

* `BOTEC <http://www.alcyone.com/software/botec>`_: a simple astrophysical and
  orbital mechanics calculator, including a database of all named Solar System
  objects.

* AstroLib: an open source effort to develop general astronomical utilities
  akin to those available in the IDL ASTRON package

* `APLpy <http://aplpy.sourceforge.net>`_: a Python module aimed at producing
  publication-quality plots of astronomical imaging data in FITS format.

* `Tutorial <http://www.scipy.org/wikis/topical_software/Tutorial>`: Using
  Python for interactive data analysis in astronomy.

* `ParselTongue <http://www.radionet-eu.org/rnwiki/ParselTongue>`: A Python
  interface to classic AIPS for the calibration, data analysis, image display
  etc. of (primarily) Radio Astronomy data.

* `Casa <http://casa.nrao.edu/>`_ a suite of C++ application libraries for the
  reduction and analysis of radioastronomical data (derived from the former
  AIPS++ package) with a Python scripting interface.

* `Healpy <http://planck.lal.in2p3.fr/wiki/pmwiki.php/Softs/Healpy>` Python
  package for using and plotting HEALpix data (e.g. spherical surface maps such
  as WMAP data).

* `Pysolar <http://pysolar.org/>`_ Collection of Python libraries for
  simulating the irradiation of any point on earth by the sun. Pysolar includes
  code for extremely precise ephemeris calculations, and more. Could be also
  grouped under engineering tools.

Artificial intelligence & machine learning
------------------------------------------

* See also the **Bayesian Statistics** section below

* `ffnet <http://ffnet.sourceforge.net>`_ Feed-forward neural network for
  python, uses NumPy arrays and SciPy optimizers.

* `pyem
  <http://www.ar.media.kyoto-u.ac.jp/members/david/softwares/em/index.html>`_
  is a tool for Gaussian Mixture Models. It implements EM algorithm for
  Gaussian mixtures (including full matrix covariances), BIC criterion for
  clustering. Since october 2006, it is included in SciPy toolbox.

* `Orange <http://www.ailab.si/orange>`_ component-based data mining software.

* `Neural Network <http://www-128.ibm.com/developerworks/library/l-neural/>`_
  An introduction to neural networks with a simple implementation based on
  http://arctrix.com/nas/python/bpnn.py

* `pymorph Morphology Toolbox <http://luispedro.org/pymorph/>`_ The pymorph
  Morphology Toolbox for Python is a powerful collection of latest
  state-of-the-art gray-scale morphological tools that can be applied to image
  segmentation, non-linear filtering, pattern recognition and image analysis.
  `Pymorph <http://www.mmorph.com/pymorph/>`_ was originally written by Roberto
  A. Lutofu and Rubens C. Machado but is now maintained by Luís Pedro Coelho.

* `pycplex <http://www.cs.toronto.edu/~darius/software/pycplex>`_ A Python
  interface to the ILOG CPLEX Callable Library.

* `Plearn <http://www.plearn.org>`_  A C++ library for machine learning with a
  Python interface (PyPlearn)

* `ELEFANT <https://elefant.developer.nicta.com.au/>`_ We aim at developing an
  open source machine learning platform which will become the platform of
  choice for prototyping and deploying machine learning algorithms.

* `Bayes Blocks <http://www.cis.hut.fi/projects/bayes/software/#bblocks>`_ The
  library is a C++/Python implementation of the variational building block
  framework using variational Bayesian learning.

* `Monte python <http://montepython.sourceforge.net>`_ A machine learning
  library written in pure Python. The focus is on gradient based learning.
  Monte includes neural networks, conditional random fields, logistic
  regression and more.

* `hcluster <http://SciPy-cluster.googlecode.com/>`: A hierarchical clustering
  library for Scipy with base implementation written in C for efficiency.
  Clusters data, computes cluster statistics, and plots dendrograms.

Bayesian Statistics
-------------------

* `PyMC <http://code.google.com/p/pymc/>`_: PyMC is a Python module that
  provides a Markov chain Monte Carlo (MCMC) toolkit, making Bayesian
  simulation models relatively easy to implement. PyMC relieves users of the
  need for re-implementing MCMC algorithms and associated utilities, such as
  plotting and statistical summary. This allows the modelers to concentrate on
  important aspects of the problem at hand, rather than the mundane details of
  Bayesian statistical simulation.

Biology (including Neuroscience)
--------------------------------

* `Brian <http://www.briansimulator.org>`_: a simulator for spiking neural
  networks in Python.

* `BioPython <http://biopython.org>`_: an international association of
  developers of freely available Python tools for computational molecular
  biology.

* `Python For Structural BioInformatics Tutorial
  <http://www.scripps.edu/pub/olson-web/people/sanner/html/talks/PSB2001talk.html#sophie>`:
  This tutorial will demonstrate the utility of the interpreted programming
  language Python for the rapid development of component-based applications for
  structural bioinformatics. We will introduce the language itself, along with
  some of its most important extension modules. Bio-informatics specific
  extensions will also be described and we will demonstrate how these components
  have been assembled to create custom applications.

* `PySAT: Python Seqeuence Analysis Tools (Version 1.0)
  <http://www.embl-heidelberg.de/~chenna/PySAT/>` PySAT is a collection of
  bioinformatics tools written entirely in python. A `paper
  <http://bioinformatics.oupjournals.org/cgi/content/abstract/16/7/628>`_
  describing these tools.

* `Python Protein Annotators' Assistant
  <http://www.bio.cam.ac.uk/~mw263/bioinformatics.html#pypaa>`_ In this
  project, a software tool has been developed which, given a list of protein
  identifiers, e.g. as returned by a BLAST or FASTA search, clusters the
  identifiers around keywords and phrases that might indicate the functions
  performed by the protein that was used in the original search query.

* `Python/Tk Viewer for the NCBI Taxonomy Database
  <http://www.bio.cam.ac.uk/~mw263/bioinformatics.html#NCBIviewer>` A viewer
  for the NCBI taxonomy database, written in Python/Tk, was developed in 1998.

* `PyPhy : A phylogenomic approach to microbial evolution
  <http://www.cbs.dtu.dk/thomas/pyphy/>`_: PyPhy is a set of python scripts and
  modules for automatic, large-scale reconstructions of phylogenetic
  relationships of complete microbial genomes.

* `PySCeS: the Python Simulator for Cellular Systems
  <http://pysces.sourceforge.net>`_: PySCes includes tools for the simulation
  and analysis of cellular systems (GPL).

* `SloppyCell <http://sloppycell.sourceforge.net/>`_: SloppyCell is a software
  environment for simulation and analysis of biomolecular networks developed by
  the groups of Jim Sethna and Chris Myers at Cornell University.

* `PyDSTool <http://pydstool.sourceforge.net/>`_: PyDSTool is an integrated
  simulation, modeling and analysis package for dynamical systems used in
  scientific computing, and includes special toolboxes for computational
  neuroscience, biomechanics, and systems biology applications.

* `Epigrass <http://epigrass.sourceforge.net/>`_: Epidemiological
  Geo-Referenced Analysis and Simulation System. Simulation and analysis of
  epidemics over networks.

* `NIPY <http://neuroimaging.scipy.org>`_: The neuroimaging in python project
  is an environment for the analysis of structural and functional neuroimaging
  data.  It currently has a full system for general linear modeling of
  functional magnetic resonance imaging (FMRI).

* `Vision Egg <http://visionegg.org>`_: produce stimuli for vision research
  experiments

* `PsychoPy <http://www.psychopy.org/>`_: create psychology stimuli in Python

Dynamical systems
-----------------

* `PyDSTool <http://pydstool.sourceforge.net/>`_: PyDSTool is an integrated
  simulation, modeling and analysis package for dynamical systems (ODEs, DDEs,
  DAEs, maps, time-series, hybrid systems). Continuation and bifurcation
  analysis tools are built-in, via PyCont. It also contains a library of
  general classes useful for scientific computing, including an enhanced array
  class and wrappers for SciPy algorithms. Application-specific utilities are
  also provided for systems biology, computational neuroscience, and
  biomechanics. Development of complex systems models is simplified using
  symbolic math capabilities and compositional model-building classes. These
  can be "compiled" automatically into dynamically-linked C code or Python
  simulators.

* `SimPy <http://simpy.sourceforge.net/>`_: SimPy (= Simulation in Python) is
  an object-oriented, process-based discrete-event simulation language based on
  standard Python. It is released under the GNU Lesser GPL (LGPL). SimPy
  provides the modeler with components of a simulation model including
  processes, for active components like customers, messages, and vehicles, and
  resources, for passive components that form limited capacity congestion
  points like servers, checkout counters, and tunnels. It also provides monitor
  variables to aid in gathering statistics. Random variates are provided by the
  standard Python random module. SimPy comes with data collection
  capabilities, GUI and plotting packages. It can be easily interfaced to other
  packages, such as plotting, statistics, GUI, spreadsheets, and data bases.

* `Pyarie <http://pyarie.wikisophia.org>`_: Pyarie is a continuous modeling
  environment useful for modeling systems of ordinary differential equations.
  The system is designed to be modular so that state variables and
  relationships, as well as complete models, can be re-used and re-defined and
  combined. Multiple integration methods are supplied for ODEs, and tools for
  optimization and linear programming are currently being built. Pyarie is
  being designed so little to no knowledge of programming is necessary for its
  use, but with full access to its structures, so that programmers can extend
  the system at will and use it as a powerful continuous modeling programming
  language.

* `Model-Builder <http://model-builder.sourceforge.net>`_. Model-Builder is a
  GUI-based application for building and simulation of ODE (Ordinary
  Differential Equations) models. Models are defined in mathematical notation,
  with no coding required by the user. Results can be exported in csv format.
  Graphical output based on matplotlib include time-series plots, state-space
  plots, Spectrogram, Continuous wavelet transforms of time series. It also
  includes a sensitivity and uncertainty analysis module. Ideal for classroom
  use.

* `VFGEN <http://www.warrenweckesser.net/vfgen>`_: VFGEN is a source code
  generator for differential equations and delay differential equations.  The
  equations are defined once in an XML format, and then VFGEN is used to
  generate the functions that implement the equations in a wide variety of
  formats.  Python users will be interested in the SciPy, PyGSL, and PyDSTool
  commands provided by VFGEN.

Economics and Econometrics
--------------------------

* `pyTrix <http://www.american.edu/econ/pytrix/pytrix.htm>`_: a small set of
  utilities for economics and econometrics, including pyGAUSS (GAUSS command
  analogues for use in SciPy).

Electromagnetics
----------------

* `PyFemax <http://people.web.psi.ch/geus/pyfemax>`_: computation of
  electro-magnetic waves in accelerator cavities.

* `FiPy <http://www.ctcms.nist.gov/fipy>`_: [#fipy See entry in Miscellaneous]

* `FEval <http://developer.berlios.de/projects/feval>`_: [#femax See entry in
  Miscellaneous]

Geosciences
-----------

* `CDAT <http://www-pcmdi.llnl.gov/software-portal/cdat>`_: (Climate Data
  Analysis Tools) is a suite of tools for analysis of climate models.
  `CDMS
  <http://www-pcmdi.llnl.gov/software-portal/cdat/manuals/cdms_v4.0_html/ch1_cdms_4.0.html/#1.1_Overview>`
  is the most commonly used submodule.

* `Jeff Whitaker <http://www.cdc.noaa.gov/people/jeffrey.s.whitaker/>`_ has
  made a number of useful tools for atmospheric modelers, including the
  `basemap <http://matplotlib.sf.net/toolkits.html>`_ toolkit for
  matplotlib, and a NumPy compatible
  `netCDF4 <http://www.cdc.noaa.gov/people/jeffrey.s.whitaker/python/netCDF4.html>` interface.

* `seawater <http://www.imr.no/~bjorn/python/seawater/index.html>`_ is a
  package for computing properties of seawater (UNESCO 1981 and UNESCO 1983).

* `A shallow water model
  <http://geosci.uchicago.edu/~cdieterich/python/python.html>`_ and other
  packages for geoscientists.

* `Fluid <http://fluid.oceanografia.org>`_ is a series of routines for
  calulating properties of fluids (air and seawater), and their interactions
  (e.g., wind stess).

* `atmqty <http://www.johnny-lin.com/py_pkgs/atmqty/doc/>`_ computes
  atmospheric quantities on earth.

* `TAPPy - Tidal Analysis Program in Python <http://tappy.sf.net>`_ decomposes
  an hourly time-series of water levels into tidal compenents.  It uses
  SciPy's least squares optimization.

* `PyClimate - Analysis of climate data in Python <http://www.pyclimate.org>`_
  performs EOF analysis, downscaling by means of CCA and analogs (in the PC and
  CCC spaces), linear digital filters, kernel based probability density
  function estimation and access to DCDFLIB.C library from Python, amongst many
  other things.

* `CliMT <http://mathsci.ucd.ie/~rca/climt/>`_ An object-oriented Climate
  Modeling and diagnostics Toolkit

* `ClimPy <https://code.launchpad.net/~pierregm/SciPy/climpy>` Hydrologic
  orientated library

* `GIS Python <http://wiki.osgeo.org/wiki/OSGeo_Python_Library>` Python
  programs and libraries for geodata processing

Molecular modeling
------------------

* `MGLTOOLS <http://www.scripps.edu/~sanner/python/index.html>`_: a
  comprehensive set of tools for molecular interaction calculations and
  visualization.

* `The Molecular Modelling Toolkit (MMTK)
  <http://starship.python.net/crew/hinsen/MMTK>`: a library for molecular
  simulation applications. In addition to providing ready-to-use
  implementations of standard algorithms, MMTK serves as a code basis that can
  be easily extended and modified to deal with standard and non-standard
  problems in molecular simulations.

* `Biskit <http://biskit.sf.net>`_: an object-oriented platform for structural
  bioinformatics research. Structure and trajectory objects tightly integrate
  with `NumPy <http://www.NumPy.org/>` allowing, for example, fast take and
  compress operations on molecules or trajectory frames. Biskit integrates many
  external programs (e.g. XPlor, Modeller, Amber, DSSP, T-Coffee, Hmmer...)
  into workflows and supports parallelization via a high-level access to
  PyPVM.

* `PyMOL <http://pymol.sourceforge.net/>`_: a molecular graphics system with an
  embedded Python interpreter designed for real-time visualization and rapid
  generation of high-quality molecular graphics images and animations.

* `UCSF Chimera <http://www.cgl.ucsf.edu/chimera>`_: UCSF Chimera is a highly
  extensible, interactive molecular graphics program. It is the successor to
  `UCSF Midas and MidasPlus <http://www.cgl.ucsf.edu/Outreach/midasplus/>`;
  however, it has been completely
  `redesigned <http://www.cgl.ucsf.edu/chimera/bkgnd.html>`_ to maximize
  extensibility and leverage advances in hardware. UCSF Chimera can be
  downloaded free of charge for academic, government, non-profit, and personal
  use.

* `The Python Macromolecular Library (mmLib)
  <http://pymmlib.sourceforge.net/>`_: a software toolkit and library of
  routines for the analysis and manipulation of macromolecular structural
  models. It provides a range of useful software components for parsing mmCIF,
  PDB, and MTZ files, a library of atomic elements and monomers, an
  object-oriented data structure describing biological macromolecules, and an
  OpenGL molecular viewer.

* `MDTools for Python <http://www.ks.uiuc.edu/~jim/mdtools>`_: MDTools is a
  Python module which provides a set of classes useful for the analysis and
  modification of protein structures. Current capabilities include reading psf
  files, reading and writing (X-PLOR style) pdb and dcd files, calculating
  phi-psi angles and other properties for arbitrary selections of residues, and
  parsing output from `NAMD <http://www.ks.uiuc.edu/Research/namd/>` into an
  easy-to-manipulate data object.

* `BALL - Biochemical Algorithms Library <http://www.ballview.org>`_: a set of
  libraries and applications for molecular modeling and visualization. OpenGL
  and Qt are the underlying C++ layers; some components are LGPL licensed,
  others GPL.

* `SloppyCell <http://sloppycell.sourceforge.net/>`_: SloppyCell is a
  software environment for simulation and analysis of biomolecular networks
  developed by the groups of Jim Sethna and Chris Myers at Cornell University.

* `PyVib2 <http://pyvib2.sourceforge.net/>`_: a program for analyzing
  vibrational motion and vibrational spectra. The program is supposed to be an
  open source "all-in-one" solution for scientists working in the field of
  vibrational spectroscopy (Raman and IR) and vibrational optical activity (ROA
  and VCD). It is based on NumPy, matplotlib, VTK and Pmw.

Signal processing
-----------------

* `GNU Radio <http://www.gnuradio.org>`_ is a free software development toolkit
  that provides the signal processing runtime and processing blocks to
  implement software radios using readily-available, low-cost external RF
  hardware and commodity processors. GNU Radio applications are primarily
  written using the Python programming language, while the supplied,
  performance-critical signal processing path is implemented in C++ using
  processor floating point extensions where available. Thus, the developer is
  able to implement real-time, high-throughput radio systems in a
  simple-to-use, rapid-application-development environment. While not primarily
  a simulation tool, GNU Radio does support development of signal processing
  algorithms using pre-recorded or generated data, avoiding the need for actual
  RF hardware.

* `pysamplerate
  <http://www.ar.media.kyoto-u.ac.jp/members/david/softwares/pysamplerate/>`_
  is a small wrapper for Source Rabbit Code (http://www.mega-nerd.com/SRC/),
  still incomplete, but which can be used now for high quality resampling of
  audio signals, even for non-rational ratio.

* `audiolab
  <http://www.ar.media.kyoto-u.ac.jp/members/david/softwares/audiolab/>`_ is a
  small library to import data from audio files to NumPy arrays, and export
  NumPy arrays to audio files. It uses libsndfile for the IO
  (http://www.mega-nerd.com/libsndfile/), which means many formats are
  available, including wav, aiff, HTK format and FLAC, an open source lossless
  compressed format.  Previously known as pyaudio (not to confuse with `pyaudio
  <http://people.csail.mit.edu/hubert/pyaudio/>`_), now part of `scikits
  <http://scikits.appspot.com/>`_.

* `PyWavelets <http://wavelets.scipy.org/moin/>`_ is a user-friendly Python
  package to compute various kinds of Discrete Wavelet Transform.

* `PyAudiere <http://pyaudiere.org/>`_ is a very flexible and easy to use
  audio library for Python users. Available methods allow you to read
  soundfiles of various formats into memory and play them, or stream them if
  they are large. You can pass sound buffers as NumPy arrays of float32's to
  play (non-blocking). You can also create pure tones, square waves, or
  'on-line' white or pink noise. All of these functions can be utilized
  concurrently.

* `CMU Sphinx <http://www.cmusphinx.org/>`_ is a free automatic speech
  recognition system.  The SphinxTrain package for training acoustic models
  includes Python modules for reading and writing Sphinx-format acoustic
  feature and HMM parameter files to/from NumPy arrays.

Symbolic math, number theory, etc.
----------------------------------

* `Swiginac <http://swiginac.berlios.de>`_: SWIG wrappers around GINAC, a C++
  symbolic math library.

* `NZMATH <http://tnt.math.metro-u.ac.jp/nzmath/>`_: NZMATH is a Python based
  number theory oriented calculation system developed at Tokyo Metropolitan
  University. It contains routines for factorization, gcd, lattice reduction,
  factorial, finite fields, and other such goodies. Unfortunately short on
  documentation, but contains a lot of useful stuff if you can find it.

* `SAGE <http://www.sagemath.org/>`_: a comprehensive environment with support
  for research in algebra, geometry and number theory. It wraps existing
  libraries and provides new ones for elliptic curves, modular forms, linear
  and non commutative algebra, and a lot more.

* `SymPy <http://code.google.com/p/sympy/>`_: SymPy is a Python library for
  symbolic mathematics. It aims to become a full-featured computer algebra
  system (CAS) while keeping the code as simple as possible in order to be
  comprehensible and easily extensible. SymPy is written entirely in Python and
  does not require any external libraries, except optionally for plotting
  support.

* `Python bindings for CLNUM <http://calcrpnpy.sourceforge.net/clnum.html>`_:
  an library which provides exact rationals and arbitrary precision floating
  point, orders of magnitude faster (and more full-featured) than the
  Decimal.py module from Python's standard library. From the same site, the
  ratfun module provides rational function approximations, and rpncalc is a
  full RPN interactive python-based calculator.

* `DecInt <http://home.comcast.net/~casevh>`_: a Python class that provides
  support for operations on very large decimal integers. Conversion to and from
  the decimal string representation is very fast; the multiplication and
  division algorithms are asymptotically faster than the native Python ones.

* `Kayali <http://kayali.sourceforge.net/>`_ is a Qt based Computer Algebra
  System (CAS) written in Python. It is essentially a front end GUI for Maxima
  and Gnuplot.

Miscellaneous
=============

* These are just other links which may be very useful to scientists, but which
  I don't quite know where to categorize, or for which I didn't want to make a
  single-link category.

* `PyMat <http://pymat.sourceforge.net/>`_: PyMat exposes the MATLAB engine
  interface allowing Python programs to start, close, and communicate with a
  MATLAB engine session. In addition, the package allows transferring matrices
  to and from an MATLAB workspace. These matrices can be specified as NumPy
  arrays, allowing a blend between the mathematical capabilities of NumPy and
  those of MATLAB.

* `mlabwrap <http://mlabwrap.sf.net/>`_: A high-level Python-to-MATLAB bridge.
  Instead of opening connections to the MATLAB engine and executing statements,
  MATLAB functions are exposed as Python functions and complicated structures
  as proxy objects.

* `pythoncall <http://www.iki.fi/pav/software/pythoncall/>`_: A
  MATLAB-to-Python bridge. Runs a Python interpreter inside MATLAB, and allows
  transferring data (matrices etc.) between the Python and Matlab workspaces.

* `IDL to Numeric/numarray Mapping
  <http://www.johnny-lin.com/cdat_tips/tips_array/idl2num.html>`_: a summary
  mapping between IDL and numarray. Most of the mapping also applies to
  Numeric.

* `Pybliographer <http://pybliographer.org>`_: a tool for managing
  bibliographic databases. It can be used for searching, editing, reformatting,
  etc. In fact, it's a simple framework that provides easy to use
  `python <http://www.python.org/>`_ classes and functions, and therefore can
  be extended to many uses (generating HTML pages according to bibliographic
  searches, etc). In addition to the scripting environment, a graphical
  `Gnome <http://www.gnome.org/>`_ interface is available. It provides powerful
  editing capabilities, a nice hierarchical search mechanism, direct insertion
  of references into `LyX <http://www.lyx.org/>`_ and
  `Kile <http://kile.sourceforge.net/>`_, direct queries on Medline, and more.
  It currently supports the following file formats: BibTeX, ISI, Medline, Ovid,
  Refer.

* `py2tex <http://www.sollunae.net/py2tex>`_: format Python source code as
  LaTeX. Note that `this <http://oedipus.sourceforge.net/py2tex>`_ site
  contains an older release of the same code, don't be confused.

* `pyreport <http://gael-varoquaux.info/computers/pyreport>`_: runs a script
  and captures the output (pylab graphics included). Generates a LaTeX or pdf
  report out of it, including litteral comments and pretty printed code.

* `Vision Egg <http://www.visionegg.org/>`_: a powerful, flexible, and free way
  to produce stimuli for vision research experiments.

* `PsychoPy <http://www.psychopy.org/>`_: a freeware library for vision
  research experiments (and analyse data) with an emphasis on psychophysics.

* `PyEPL <http://pyepl.sourceforge.net/>`_: the Python Experiment Programing
  Library. A free library to create experiments ranging from simple display of
  stimuli and recording of responses (including audio) to the creation of
  interactive virtual reality environments.

* `Pythonica <http://www.tildesoft.com/Pythonica.html>`: a Python
  implementation of a symbolic math program, based upon the fantastic precedent
  set by Mathematica.

* `Module dependency graph <http://www.tarind.com/depgraph.html>`_:a few
  scripts to glue modulefinder.py into `graphviz <http://www.graphviz.org>`_,
  producing import dependency pictures pretty enough for use as a poster, and
  containing enough information to be a core part of my process for
  understanding physical dependencies.

* `Modular Toolkit for Data Processing (MDP) 
  <http://mdp-toolkit.sourceforge.net/>`_: a library to implement data 
  processing elements (nodes) and to combine them into data processing 
  sequences (flows). Already implemented nodes include Principal Component
  Analysis (PCA), Independent Component Analysis (ICA), Slow Feature 
  Analysis (SFA), and Growing Neural Gas.

* `FiPy <http://www.ctcms.nist.gov/fipy/>`_: FiPy is an object
  oriented, partial differential equation (PDE) solver, written in Python ,
  based on a standard finite volume (FV) approach. The framework has been
  developed in the Metallurgy Division and Center for Theoretical and
  Computational Materials Science (CTCMS), in the Materials Science and
  Engineering Laboratory (MSEL) at the National Institute of Standards and
  Technology (NIST).

* `SfePy <http://sfepy.org>`_: SfePy is a finite element
  solver written in Python, with the time demanding parts implemented in C and
  interfaced by SWIG. It can be used to solve various problems described by
  partial differential equations in 2D or 3D, for example the linear
  elasticity, hyperelasticity, heat conduction, Navier-Stokes, Biot, and other
  problems. As a research code it is used to implement models derived by the
  theory of homogenization, with applications in modeling of porous media (for
  example bones or soft tissue organs) or phononic materials.

* `Hermes <http://hpfem.org>`_: Hermes is a free C++/Python
  library for rapid prototyping of adaptive FEM and hp-FEM solvers developed by
  an open source community around the hp-FEM group at the University of Nevada,
  Reno.

* `FEval <http://www.sourceforge.net/projects/feval>`_: FEval
  is useful for conversion between many finite element file formats. The main
  functionality is extraction of model data in the physical domain, for example
  to calculate flow lines.

* `CSC Climate Wiki <https://geodoc.uchicago.edu/climatewiki>`_: wiki for the
  `Climate Systems Center <http://climate.uchicago.edu/>`_ (CSC) at the
  University of Chicago. Topics include climate research, the philosophy of
  modularizing climate models, the use of Python in climate modeling, and
  software packages produced by CSC. This site contains a lot of useful
  information about Python for scientific computing.

* `peak-o-mat <http://lorentz.sf.net>`_: peak-o-mat is a curve fitting program
  for the spectrocopist. It is especially designed for batch cleaning,
  conversion and fitting of spectra from visibile optics expriments if you're
  facing a large number of similar spectra.

* `scalar <http://RussP.us/scalar.htm>`: The scalar package is designed to
  represent physical scalars and to eliminate errors involving implicit
  physical units (e.g., confusing angular degrees and radians). It comes with a
  complete implementation of the standard metric system of units and many
  standard non-metric units. It also allows the user to easily define a
  specialized or reduced set of appropriate physical units for any particular
  application or domain. Once an application has been developed and tested, the
  scalar class can be switched off for production runs to achieve the execution
  efficiency of operations on built-in numeric types, which can be up to two
  orders of magnitude faster. A user guide is provided.



