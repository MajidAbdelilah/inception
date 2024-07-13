FROM  debian:bookworm

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	curl php  php8.2-fpm  php-mysql mariadb-client

COPY ./tools/install.sh /install.sh

RUN chmod +x /install.sh

ENTRYPOINT ["/bin/bash", "-x", "./install.sh" ]