FROM  debian:bookworm

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=MA/ST=KH/L=KH/O=1337/CN=amajid.42.fr/UID=amajid"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/wordpress

# change the owner of the wordpress directory to www-data
RUN chown -R www-data:www-data /var/www/wordpress

RUN /bin/bash -x nginx -t

CMD ["nginx", "-g", "daemon off;"]