# Use the official Ubuntu base image
FROM ubuntu:latest

# Set noninteractive mode for apt-get to suppress prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Africa/Nairobi 

# Update apt package index
RUN apt-get update

# Install Apache2, PHP 7.4, MySQL client, and server
RUN apt-get install -y apache2 mysql-client mysql-server

# Add repository for PHP 7.4
RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update

# Install PHP 7.4 and Apache PHP module
RUN apt-get install -y php7.4 libapache2-mod-php7.4

# Install MySQLi and XML extensions for PHP
RUN apt-get install -y php7.4-mysql php7.4-xml php7.4-curl php7.4-gd php7.4-intl php7.4-mbstring php7.4-zip php7.4-xmlrpc php7.4-soap
# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set a custom document root
COPY ../ /var/www/html/moodle
WORKDIR /var/www/html/moodle

# Modify the Apache configuration to point to the new directory
RUN sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/moodle/' /etc/apache2/sites-enabled/000-default.conf

# Set permissions for moodledata directory
RUN chmod -R 777 /var/www/html/

# Start Apache in the foreground when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
