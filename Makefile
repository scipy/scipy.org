HTMLDIR=public

BASEURL ?=

ifdef BASEURL
        BASEURLARG=-b $(BASEURL)
endif

.PHONY: help clean html serve serve-dev


help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html                   to make standalone HTML files"
	@echo "  serve                  to serve the website locally"
	@echo "  serve-dev              to serve the website locally and full rebuilds one change"
	@echo "  teams                  to generate teams files"

clean: ## remove the build artifacts, mainly the "public" directory
	rm -rf $(HTMLDIR)

prepare: clean
	git submodule update --init --recursive

teams: prepare
	python themes/scientific-python-hugo-theme/tools/team_query.py \
		--org=scipy --team=scipy-core-team --title=Maintainers \
		> static/gallery/maintainers.md
	python themes/scientific-python-hugo-theme/tools/team_query.py \
		--org=scipy --team=triage --title=Triage \
		> static/gallery/triage.md
#   python themes/scientific-python-hugo-theme/tools/team_query.py \
#		--org=scipy --team=website --title=Website \
#		> static/gallery/website.md

html: prepare ## build the website in ./public
	hugo $(BASEURLARG)

serve: html
	@hugo --i18n-warnings --buildDrafts server

serve-dev: html
	@hugo --i18n-warnings --buildDrafts server --disableFastRender
