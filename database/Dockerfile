# Usa la imagen oficial de Bitnami MySQL como base
FROM bitnami/mysql:latest  

# Copiar un archivo de configuración personalizado (opcional)
# COPY my-custom.cnf /opt/bitnami/mysql/conf/my.cnf

# Ejecutar un script SQL al inicio (opcional)
# COPY init.sql /docker-entrypoint-initdb.d/


# Cambiar el hostname en tiempo de ejecución
RUN echo "falco-baseline-db" > /etc/hostname \
    && echo "127.0.1.1 falco-baseline-db" >> /etc/hosts

# Exponer el puerto de MySQL
EXPOSE 3306

# Comando de inicio (usa el de la imagen base)
# CMD ["docker-entrypoint.sh", "mysqld"]
