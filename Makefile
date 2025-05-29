LOGIN	= inowak

all: up

up:
	@echo "🚀 Starting containers..."
	@sudo mkdir -p /home/$(LOGIN)/data/mariadb /home/$(LOGIN)/data/wordpress
	@sudo chown -R $(LOGIN):$(LOGIN) /home/$(LOGIN)/data
	@sudo chmod -R 755 /home/$(LOGIN)/data
	@docker compose -f ./srcs/docker-compose.yml up -d

down:
	@echo "🛑 Stopping containers..."
	@docker compose -f ./srcs/docker-compose.yml down

clean: down
	@echo "🧹 Cleaning data..."
	@sudo rm -rf /home/$(LOGIN)/data

fclean: clean
	@echo "🗑️ Removing all Docker images and containers..."
	@docker system prune -af

re: fclean up

.PHONY: all up down clean fclean re
