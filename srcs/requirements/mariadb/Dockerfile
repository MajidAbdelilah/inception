FROM  debian:bookworm


RUN apt-get update && apt-get upgrade -y && apt-get install -y \
mariadb-server mariadb-client

# Copy the configuration file
COPY ./tools/mdb.sh /mdb.sh

RUN chmod +x /mdb.sh

# start the service

ENTRYPOINT ["/bin/bash", "-x", "./mdb.sh" ]
