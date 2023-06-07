FROM mysql:latest

# Set environment variables for MySQL
ENV MYSQL_DATABASE=storemanagement
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword
ENV MYSQL_ROOT_PASSWORD=1

# Copy SQL script to seed the database
COPY script /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
