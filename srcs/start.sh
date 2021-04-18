# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguadalu <mguadalu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/17 20:48:03 by mguadalu          #+#    #+#              #
#    Updated: 2021/04/17 21:00:31 by mguadalu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

echo "ft_server is starting"

service mysql start
service php7.3-fpm start
service nginx start