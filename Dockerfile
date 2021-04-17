# Variavéis do Dockerfile PostgreSQL
ARG POSTGRES_VERSION=13.2

# Origem e mantenedor
FROM postgres:${POSTGRES_VERSION}
LABEL maintainer="Guilherme Bigois"

# Variáveis dinâmicas da base de dados Protheus
ARG PROTHEUS_DBUSER
ARG PROTHEUS_DBPASSWORD
ARG PROTHEUS_DBNAME

# Variáveis de ambiente da base de dados Protheus
ENV INTERNAL_PROTHEUS_DBUSER=${PROTHEUS_DBUSER:-protheus}
ENV INTERNAL_PROTHEUS_DBPASSWORD=${PROTHEUS_DBPASSWORD:-protheus}
ENV INTERNAL_PROTHEUS_DBNAME=${PROTHEUS_DBNAME:-protheus}

# Cria o arquivo de inicialização
COPY init.sql /docker-entrypoint-initdb.d/
RUN sed -i 's/{{PROTHEUS_DBUSER}}/'"${INTERNAL_PROTHEUS_DBUSER}"'/' /docker-entrypoint-initdb.d/init.sql
RUN sed -i 's/{{PROTHEUS_DBPASSWORD}}/'"${INTERNAL_PROTHEUS_DBPASSWORD}"'/' /docker-entrypoint-initdb.d/init.sql
RUN sed -i 's/{{PROTHEUS_DBNAME}}/'"${INTERNAL_PROTHEUS_DBNAME}"'/' /docker-entrypoint-initdb.d/init.sql

# Definição do diretório inicial
WORKDIR /var/lib/postgresql
