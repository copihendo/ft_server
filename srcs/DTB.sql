CREATE DATABASE wordpress;
CREATE USER 'mguadalu'@'localhost' IDENTIFIED BY 'mguadalu';
GRANT ALL PRIVILEGES ON wordpress.* TO 'mguadalu'@'localhost';
FLUSH PRIVILEGES;