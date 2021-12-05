
.PHONY: help install-tool up status new doc

ENV := "local"
CONFIG_FILE := dbconfig.yml

.DEFAULT_GOAL := help

install-tool: ## Install migration tool
	go get -v github.com/rubenv/sql-migrate/...
	go get -v github.com/k1LoW/tbls

up: ## Apply migration files
	sql-migrate up -env=$(ENV) -config=$(CONFIG_FILE)

doc: ## Update ER graphs
	tbls doc -f

status: ## Show migration status
	sql-migrate status -env=${ENV} -config=${CONFIG_FILE}

down: ## Down migration files
	sql-migrate down -env=${ENV} -config=${CONFIG_FILE}

# Ex: make new name=CreateTableCardUsers
new: ## Create new migration file
	sql-migrate new -env=${ENV} -config=${CONFIG_FILE} ${name}

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'