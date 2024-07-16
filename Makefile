WP_DATA = /home/amajid/data/wordpress
DB_DATA = /home/amajid/data/mariadb
up: build
	@mkdir -p $(WP_DATA)
	@mkdir -p $(DB_DATA)
	docker compose -f ./srcs/docker-compose.yml up -d

# build the containers
build:
	docker compose -f ./srcs/docker-compose.yml build

fclean: clean
	docker system prune -a

clean:
	docker stop $(docker ps -qa);
	docker rm $(docker ps -qa)
	docker rmi -f $(docker images -qa)
	docker volume rm $(docker volume ls -q)
	docker network rm $(docker network ls -q)
