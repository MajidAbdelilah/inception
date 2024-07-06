# Use Debian oldstable as the base image
FROM debian:oldstable

# Update and install nginx and openssl
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginix openssl

# Generate a self-signed SSL certificate for nginx
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/amajid.key -out /etc/nginx/amajid.crt \
	-subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=amajid.42.fr"

# Copy nginx configuration file to the container
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Expose port 443 (HTTPS) to allow external connections
EXPOSE 443

#run nginix
CMD ["nginx", "-g", "daemon off;"]
