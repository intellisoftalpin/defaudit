SHELL := /bin/sh
ENV_FILE ?= .env

define DOCKER_COMPOSE
	if $(DOCKER) compose version >/dev/null 2>&1; then \
		echo "$(DOCKER) compose"; \
	elif command -v docker-compose >/dev/null 2>&1; then \
		echo "docker-compose"; \
	else \
		echo "ERROR: Docker Compose not found. Install docker compose command (v2 plugin preferred)." 1>&2; \
		exit 1; \
	fi
endef

.PHONY: help init pull up start down

help:
	@echo ""
	@echo "+----------------+-----------------------------------------------+"
	@echo "| Target         | Description                                   |"
	@echo "+----------------+-----------------------------------------------+"
	@echo "| help           | Show this help                                |"
	@echo "| init           | Create data dirs and .env if missing          |"
	@echo "| pull           | Pull Docker image                             |"
	@echo "| up             | Start services                                |"
	@echo "| start          | init + pull + up                              |"
	@echo "| down           | Stop services                                 |"
	@echo "+----------------+-----------------------------------------------+"
	@echo ""
	@echo "+----------------+-----------------------------------------------+"
	@echo "| Override       | Usage                                         |"
	@echo "+----------------+-----------------------------------------------+"
	@echo "| DOCKER         | make DOCKER=/path/to/docker up                |"
	@echo "| ENV_FILE       | make ENV_FILE=.env up                         |"
	@echo "+----------------+-----------------------------------------------+"

init:
	@mkdir -p ./data ./ssh_keys
	@if [ ! -f "$(ENV_FILE)" ]; then \
		if [ -f ".env.local" ]; then \
			cp .env.local "$(ENV_FILE)"; \
			echo "Created $(ENV_FILE) from .env.local (edit if needed)."; \
		else \
			echo "No .env.local found. Continuing without $(ENV_FILE)."; \
		fi \
	fi

pull:
	@COMPOSE="$$(sh -c '$(DOCKER_COMPOSE)')" && $$COMPOSE --env-file "$(ENV_FILE)" pull

up: init
	@COMPOSE="$$(sh -c '$(DOCKER_COMPOSE)')" && $$COMPOSE --env-file "$(ENV_FILE)" up -d

start: init pull up

down:
	@COMPOSE="$$(sh -c '$(DOCKER_COMPOSE)')" && $$COMPOSE --env-file "$(ENV_FILE)" down
