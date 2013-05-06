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

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  upload     to upload the generated pages to Github"
	@echo "  html       to make standalone HTML files"
	@echo "  linkcheck  to check if external links work"

clean:
	-rm -rf _build/*

upload: html
	cd _build/html && \
	    touch .nojekyll && \
	    rm -rf .git && \
	    git init && \
	    git remote add target git@github.com:scipy/scipy.github.com.git && \
	    git add -A && \
	    git commit -m "Rebuild site" -a && \
	    git push -f target master:master

upload-new: html
	# SSH must be correctly configured for this to work.
	cp .htaccess _build/html/
	rsync -az --exclude '.git' _build/html/ tkluyver@new.scipy.org:/srv/scipy_org

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) _build/html
	@echo
	@echo "Build finished. The HTML pages are in _build/html."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) _build/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in _build/linkcheck/output.txt."
