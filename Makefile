NAME=inception
DC=docker compose -f srcs/docker-compose.yml

up:
	$(DC) up -d --build

down:
	$(DC) down

re: down up

logs:
	$(DC) logs -f

clean:
	$(DC) down -v
	docker system prune -f

ps:
	$(DC) ps


.PHONY: up down re logs clean ps
