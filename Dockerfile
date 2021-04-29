# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguadalu <mguadalu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 16:44:43 by mguadalu          #+#    #+#              #
#    Updated: 2021/04/23 22:14:32 by mguadalu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN 	apt-get update
RUN 	apt-get -y install nginx vim
RUN 	apt-get -y install default-mysql-server
RUN 	apt-get -y install php7.3 php7.3-fpm php7.3-mysql
RUN 	apt-get -y install wordpress
RUN 	apt-get -y install openssl
RUN 	mkdir -p /var/www/html && mv /usr/share/wordpress /var/www/html

# RUN echo "HELLO WORLD" > /var/www/html/index.html

ADD		https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz /

RUN 	tar -xvf /phpMyAdmin-5.0.4-all-languages.tar.gz -C /var/www/html && \
rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN 	mv ./var/www/html/phpMyAdmin-5.0.4-all-languages ./var/www/html/phpmyadmin

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/mguadalu.key \
-out /etc/ssl/certs/mguadalu.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=School21/OU=mguadalu/CN=localhost"

COPY	./srcs/nginx_config			./etc/nginx/sites-enabled/default
COPY	./srcs/start.sh				./
COPY	./srcs/wp-config.php		./var/www/html/wordpress/
COPY 	./srcs/DTB.sql				./DTB.sql
COPY	./srcs/phpmyadmin.inc.php 	./var/www/html/phpmyadmin/

CMD		bash start.sh

EXPOSE	80 443