This repository contains the Sphinx source for the SciPy website
(http://www.scipy.org/).

The source is in the `www` directory, `cd` there, then the following
commands apply:

To make a local build of the website

    $ make html

To build and upload the site (requires push permissions on
https://github.com/scipy/scipy.github.com).

    $ make upload

To test external links from the site

    $ make linkcheck

