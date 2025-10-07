FROM mariadb:11.8

# Variáveis de ambiente opcionais (podem ser sobrescritas no Railway)
ENV MYSQL_ROOT_PASSWORD=${MARIADB_ROOT_PASSWORD:-root}
ENV MYSQL_DATABASE=${MARIADB_DATABASE:-railway}

# Expõe a porta padrão do MariaDB
EXPOSE 3306

# Comando para iniciar o MariaDB
CMD ["mariadbd"]