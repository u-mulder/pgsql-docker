# Variables
DOCKER_COMPOSE=docker-compose
# Value is taken from service definition in `docker-compose.yml`
DB_CONTAINER_NAME=db

# Recipes
.PHONY: up
up:
	${DOCKER_COMPOSE} up -d

.PHONY: start
start: up

.PHONY: down
down:
	${DOCKER_COMPOSE} down

.PHONY: stop
stop: down

# --username value is taken from "db" service definition in `docker-compose.yml`
.PHONY: pg
pg:
	${DOCKER_COMPOSE} exec ${DB_CONTAINER_NAME} psql --username=username

.PHONY: run
run: up pg

.PHONY: ls
ls:
	docker container ls
