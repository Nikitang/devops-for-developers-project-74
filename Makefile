.PHONY: setup test dev up down logs ci

setup:
	docker compose run --rm app make setup

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app