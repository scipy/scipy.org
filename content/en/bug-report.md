---
title: Bug reports
sidebar: false
---

**Please help us by reporting any problems you find.**

SciPy uses GitHub to do project management.
There, you can see what we are currently working on (Pull Requests), as
well as file bug-reports (issues).

1.  Go to the relevant page:
    -   [Pull requests](https://github.com/scipy/scipy/pulls)
    -   [Bug reports](https://github.com/scipy/scipy/issues)
2.  On GitHub, you need to register an account the first time you use
    it.
3.  Make sure the bug hasn\'t already been reported. Click on \"Search\"
    and type in some keywords to search for.
4.  File your bug-report by clicking \"New Issue\" on GitHub. For advice
    on how to provide a useful bug report, see the
    [guidelines for submitting bugs](#guidelines-for-submitting-bugs).
5.  Note that the bug trackers are mostly for actual bugs. If you want
    to propose an enhancement, then the mailing list is a better place
    to get feedback.

**Thank you for helping to make** SciPy **better!**

# Guidelines for submitting bugs

-   Provide a good description. Tickets in the vein of \"SciPy is
    BROKEN!!!\" are not useful; rather, please state the problem
    clearly, e.g., \"scipy.ndimage ignores keyword \'axis\'\".

-   Include a minimal standalone code snippet to illustrate the problem.
    Try to narrow it down to a few lines.

-   If you experience segfaults or memory errors, give a GDB traceback:

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

    Then use the \"bt\" command after the segfault happens to get the
    backtrace. Alternatively, run the code using
    [Valgrind](http://valgrind.org/).
