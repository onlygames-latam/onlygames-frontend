PROJECT_NAME := pesapi2-container
# Define the default container name
CONTAINER ?= 

build:
	docker-compose build ${CONTAINER}

run:
	docker-compose up ${CONTAINER}

# Alias to make run
up:
	make run ${CONTAINER}

rund:
	docker-compose up -d

stop:
	docker-compose stop ${CONTAINER}

down:
	docker-compose down ${CONTAINER}

volumes:
	docker volume ls

rmv:
	docker volume rm ${VOLUME}

logs:
	docker-compose logs ${CONTAINER}

shell:
	docker-compose exec ${CONTAINER} /bin/bash

nuke:
	make stop ${CONTAINER} && make down ${CONTAINER} && docker rm ${CONTAINER}