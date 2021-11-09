HTMLDIR=public

BASEURL ?=

ifdef BASEURL
        BASEURLARG=-b $(BASEURL)
endif

.PHONY: help clean html serve serve-dev teams teams-clean


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

TEAMS_DIR = static/teams
TEAMS = scipy-core-team triage website
TEAMS_QUERY = python themes/scientific-python-hugo-theme/tools/team_query.py

$(TEAMS_DIR):
	mkdir -p $(TEAMS_DIR)

$(TEAMS_DIR)/%.md: $(TEAMS_DIR)
	$(TEAMS_QUERY) --org scipy --team "$*"  >  $(TEAMS_DIR)/$*.html

teams-clean: prepare
	for team in $(TEAMS); do \
	  rm -f $(TEAMS_DIR)/$${team}.html ;\
	done

teams: | teams-clean $(patsubst %,$(TEAMS_DIR)/%.md,$(TEAMS))

html: prepare ## build the website in ./public
	hugo $(BASEURLARG)

serve: html
	@hugo --i18n-warnings --buildDrafts server

serve-dev: html
	@hugo --i18n-warnings --buildDrafts server --disableFastRender
