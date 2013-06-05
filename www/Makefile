# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d _build/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

.PHONY: help clean html linkcheck

USERNAME=tkluyver

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  upload USERNAME=user   to upload the generated pages to new.scipy.org"
	@echo "  html                   to make standalone HTML files"
	@echo "  linkcheck              to check if external links work"

clean:
	-rm -rf _build/*

upload: html
	# SSH must be correctly configured for this to work.
	cp .htaccess _build/html/
	chmod a+rX -R _build/html/
	rsync -az --exclude '.git' _build/html/ \
	    $(USERNAME)@new.scipy.org:/srv/scipy_org
	ssh $(USERNAME)@new.scipy.org /srv/bin/fixperm-scipy_org.sh

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) _build/html
	@echo
	@echo "Build finished. The HTML pages are in _build/html."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) _build/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in _build/linkcheck/output.txt."
