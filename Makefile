WP_DATA = /home/data/wordpress
DB_DATA = /home/data/mariadb
up: build
	@mkdir -p $(WP_DATA)
	@mkdir -p $(DB_DATA)
	docker compose -f ./srcs/docker-compose.yml up -d

# build the containers
build:
	docker compose -f ./srcs/docker-compose.yml build