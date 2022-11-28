init: docker-down-clean docker-build docker-up
start: docker-down-clean
down:

app-init: composer-install
docker-build:
	docker-compose build
docker-up:
	docker-compose up -d
docker-down-clean:
	docker-compose -v --remove-orphans
composer-install:
	composer-install