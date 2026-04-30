.PHONY: help setup fix
.DEFAULT_GOAL := help

help: ## List of Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Setup project
	@echo "Setup project for ther first time..."
	@gem install --user-install bundler jekyll
	@bundle install
	@bundle exec jekyll build
	@bundle exec jekyll pre-commit init

commit: ## Run git cz for committing changes
	@bundle exec git cz

install: ## Run bunlde install
	@bundle install

update: ## Run bunlde update
	@bundle update

build: ## Run jekyll build
	@bundle exec jekyll build

run: ## Run jekyll local development
	@bundle exec jekyll serve

rundraft: ## Run jekyll local development with draft
	@bundle exec jekyll serve --draft

tag: ## Get current tags
	@./semtag get

majortag:  ## Generate major tags
	@./semtag final -s major

minortag:  ## Generate minor tags
	@./semtag final -s minor

patchtag:  ## Generate patch tags
	@./semtag final -s patch

changelog: ## Create or update changelog.md files
	@git-chglog --output CHANGELOG.md
