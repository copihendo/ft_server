# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguadalu <mguadalu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 16:44:43 by mguadalu          #+#    #+#              #
#    Updated: 2021/04/17 21:19:26 by mguadalu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN 	apt-get update
RUN 	apt-get -y install nginx vim
RUN 	apt-get -y install default-mysql-server
RUN 	apt-get -y install php7.3 php7.3-fpm php7.3-mysql
RUN 	apt-get -y install wordpress
RUN 	apt-get -y install openssl

ADD		https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz /

RUN 	tar -xvf /phpMyAdmin-5.0.4-all-languages.tar.gz -C /var/www/html && \
rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz


COPY	./srcs/nginx_config		./etc/nginx/sites-available/default
COPY	./srcs/start.sh			./
COPY	./srcs/wp-config.php	./var/www/html/wordpress
COPY	./srcs/phpmyadmin.inc.php	./var/www/html/phpMyAdmin-5.0.4-all-languages

CMD		bash start.sh

EXPOSE	80 443