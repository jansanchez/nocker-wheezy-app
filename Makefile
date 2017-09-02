.DEFAULT_GOAL := help

setup: ## Build and Install
	sh ./docker/scripts/setup.sh

build: ## Build images
	sh ./docker/scripts/build.sh

install: ## Install dependencies
	sh ./docker/scripts/supply.sh

command: ## exec bash command
	sh ./docker/scripts/bash.sh "$(filter-out $@,$(MAKECMDGOALS))"

up: ## Up services
	docker-compose up

upnolog: ## Up services without logs
	docker-compose -d

down: ## Stop and remove services
	docker-compose down

reload: ## Reload services
	docker-compose restart

list: ## List of current active services
	docker-compose ps

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
