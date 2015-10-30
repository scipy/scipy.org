Report Bugs
===========
**Please help us by reporting any problems you find.**

Projects in the SciPy Stack all have their own bug trackers, on which issues
can be reported.  Questions and feature requests are best sent to the mailing
list of the project it concerns.  Trackers:

   - `NumPy <https://github.com/numpy/numpy/issues>`_

   - `SciPy <https://github.com/scipy/scipy/issues>`_
   
   - `Matplotlib <https://github.com/matplotlib/matplotlib/issues>`_

   - `IPython <https://github.com/ipython/ipython/issues>`_

   - `Pandas <https://github.com/pydata/pandas/issues>`_

   - `SymPy <http://code.google.com/p/sympy/issues/list>`_

Bug reports and suggestions for this website (http://scipy.org) should be
submitted at https://github.com/scipy/scipy.org/issues.  Errors in
documentation however should be reported on the project-specific issue trackers above.
Technical problems with http://docs.scipy.org such as connectivity issues, etc.
should be reported to the scipy.org website issue tracker.

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
