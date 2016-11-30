Report Bugs
===========
**Please help us by reporting any problems you find.**

Projects in the SciPy Stack all have their own bug trackers, on which issues
can be reported.  Questions and feature requests are best sent to the mailing
list of the project it concerns.

Please report bugs, documentation errors etc. in the following trackers:

- `NumPy issues <https://github.com/numpy/numpy/issues>`_

- `SciPy issues <https://github.com/scipy/scipy/issues>`_
   
- `Matplotlib issues <https://github.com/matplotlib/matplotlib/issues>`_

- `IPython issues <https://github.com/ipython/ipython/issues>`_

- `Pandas issues <https://github.com/pydata/pandas/issues>`_

- `SymPy issues <https://github.com/sympy/sympy/issues>`_

For problems with this scipy.org website, use the bug tracker
for the `scipy.org website project <https://github.com/scipy/scipy.org/>`_. This
*excludes* `docs.scipy.org <https://docs.scipy.org/doc/>`__: problems in docs
should be reported to the project which the document describes.

Guidelines for submitting bugs
------------------------------

* Provide a good description. Tickets in the vein of "SciPy is
  BROKEN!!!" are not useful; rather, please state the problem clearly,
  e.g. "scipy.ndimage ignores keyword 'axis'".

* Include a minimal stand-alone code snippet to illustrate the
  problem.  Try to narrow it down to a few lines.

* If you experience segfaults or memory errors, give a GDB traceback:

  ::

      $ gdb python
      GNU gdb 6.3.50-20050815 (Apple version gdb-573) (Fri Oct 20 15:50:43 GMT 2006)
      Copyright 2004 Free Software Foundation, Inc.
      GDB is free software, covered by the GNU General Public License, and you are
      welcome to change it and/or distribute copies of it under certain conditions.
      Type "show copying" to see the conditions.
      There is absolutely no warranty for GDB.  Type "show warranty" for details.
      This GDB was configured as "i386-apple-darwin"...Reading symbols for shared
      libraries .. done
      (gdb) run -c "import scipy; scipy.test(10,10)"
      Starting program: /usr/local/bin/python -c "import scipy; scipy.test()"
      Reading symbols for shared libraries . done
      Program received signal SIGTRAP, Trace/breakpoint trap.
      0x8fe01010 in __dyld__dyld_start ()
      (gdb) c
      Continuing.
      Reading symbols for shared libraries . done
      Reading symbols for shared libraries . done
      ...

  Then use the "bt" command after the segfault happens to get the backtrace.
  Alternatively, run the code using `Valgrind <http://valgrind.org/>`__.
