.PHONY: up
up:
	docker-compose up -d 

.PHONY: down
down:
	docker-compose down 

.PHONY: pg
pg:
	docker-compose exec db psql --username=um 

.PHONY: run
run: up pg

.PHONY: ls
ls:
	docker container ls



