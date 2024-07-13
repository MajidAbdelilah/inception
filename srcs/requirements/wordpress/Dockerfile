FROM  debian:bookworm

RUN apt update && apt upgrade -y && apt install -y \
	curl php  php8.3-fpm  php-mysql mariadb-client

COPY ./tools/install.sh /install.sh

RUN chmod +x /install.sh

ENTRYPOINT ["/bin/bash", "-x", "./install.sh" ]