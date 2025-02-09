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
	git submodule update --init
	python gen_config.py

# All translations share the <team>.toml files in the en translation
TEAMS_DIR = content/en/teams
TEAMS = emeritus-maintainers maintainers triage-team web-team
TEAMS_QUERY = python themes/scientific-python-hugo-theme/tools/team_query.py

$(TEAMS_DIR)/%.toml:
	$(TEAMS_QUERY) --org scipy --team "$*"  >  $(TEAMS_DIR)/$*.toml

teams-clean: prepare
	for team in $(TEAMS); do \
	  rm -f $(TEAMS_DIR)/$${team}.toml ;\
	done

teams: | teams-clean $(patsubst %,$(TEAMS_DIR)/%.toml,$(TEAMS))

html: prepare ## build the website in ./public
	hugo $(BASEURLARG)

serve: html
	@hugo --printI18nWarnings server

serve-dev: html
	@hugo --printI18nWarnings --disableFastRender server
