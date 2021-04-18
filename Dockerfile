# Variavéis do Dockerfile PostgreSQL
ARG POSTGRES_VERSION=latest

# Origem e mantenedor
FROM postgres:${POSTGRES_VERSION}
LABEL maintainer="Guilherme Bigois"

RUN apt-get update
RUN apt install dumb-init

# Cria o arquivo de inicialização
COPY init.sh /
COPY init.sql /docker-entrypoint-initdb.d/

# Inicia o script my-init.sh antes do 
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/init.sh"]

# Definição do diretório inicial
WORKDIR /var/lib/postgresql
