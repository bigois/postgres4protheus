#!/bin/bash

# Mensagem de boas vindas
echo "*-------------------------------------------------------*"
echo "|       Welcome to PostgreSQL for TOTVS Protheus        |"
echo "*-------------------------------------------------------*"
echo "| Created by: Guilherme Bigois                          |"
echo "| LinkedIn: https://www.linkedin.com/in/guilhermebigois |"
echo "| GitHub: https://github.com/guilhermebigois            |"          
echo "*-------------------------------------------------------*"

# Iniciando o processo de substitução das variáveis
echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Setting Protheus database values...]"

# Verifica se a variável de ambiente PROTHEUS_DBUSER foi configurada
# Caso sim, utiliza para alterar o arquivo init.sql em /docker-entrypoint-initdb.d/
DB_USER=$(printenv PROTHEUS_DBUSER)

if [ -z "${DB_USER}" ]; then
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBUSER is empty.]"
    echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using default PROTHEUS_DBUSER value: protheus]"
else
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBUSER is not empty.]"
    echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using ${DB_USER} for Protheus database user]"
fi

sed -i 's/{{PROTHEUS_DBUSER}}/'"${DB_USER}"'/' /docker-entrypoint-initdb.d/init.sql

# Verifica se a variável de ambiente PROTHEUS_DBPASSWORD foi configurada
# Caso sim, utiliza para alterar o arquivo init.sql em /docker-entrypoint-initdb.d/
DB_PASS=$(printenv PROTHEUS_DBPASSWORD)

if [ -z "${DB_PASS}" ]; then
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBPASSWORD is empty.]"
	echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using default PROTHEUS_DBPASSWORD value: protheus]"
else
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBPASSWORD is not empty.]"
	echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using ${DB_PASS} for Protheus database user password]"
fi

sed -i 's/{{PROTHEUS_DBPASSWORD}}/'"${DB_PASS}"'/' /docker-entrypoint-initdb.d/init.sql

# Verifica se a variável de ambiente PROTHEUS_DBNAME foi configurada
# Caso sim, utiliza para alterar o arquivo init.sql em /docker-entrypoint-initdb.d/
DB_NAME=$(printenv PROTHEUS_DBNAME)

if [ -z "${DB_NAME}" ]; then
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBNAME is empty.]"
	echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using default PROTHEUS_DBNAME value: protheus]"
else
    echo "[WARN][$(date '+%Y-%m-%d %H:%M:%S')][Enviroment variable PROTHEUS_DBNAME is not empty.]"
	echo "[INFO][$(date '+%Y-%m-%d %H:%M:%S')][Using ${DB_NAME} for Protheus database name]"
fi

sed -i 's/{{PROTHEUS_DBNAME}}/'"${DB_NAME}"'/' /docker-entrypoint-initdb.d/init.sql

# Inicia o banco de dados
exec /docker-entrypoint.sh postgres
