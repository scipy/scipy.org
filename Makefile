HTMLDIR=public
USERNAME=rgommers

BASEURL ?=

ifdef BASEURL
        BASEURLARG=-b $(BASEURL)
endif

.PHONY: help clean html


help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  upload USERNAME=user   to upload the generated pages to scipy.org"
	@echo "  html                   to make standalone HTML files"

clean: ## remove the build artifacts, mainly the "public" directory
	rm -rf $(HTMLDIR)

upload: html
	# SSH must be correctly configured for this to work.
	# cp .htaccess $(HTMLDIR)
	chmod -R a+rX $(HTMLDIR)
	rsync -og --chown=www-data:www-data --delete-after -r \
	    --exclude '.git' $(HTMLDIR) \
	    $(USERNAME)@scipy.org:/var/www/html

html: ## build the website in ./public
	hugo $(BASEURLARG)

serve:
	@hugo --i18n-warnings --buildDrafts server


serve-dev:
	@hugo --i18n-warnings --buildDrafts server --disableFastRender
