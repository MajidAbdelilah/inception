FROM  debian:bookworm

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	curl php php7.4-fpm php-mysql mariadb-client netcat

COPY ./tools/install.sh /install.sh

RUN chmod +x /install.sh

ENTRYPOINT [ "./install.sh" ]