CREATE DATABASE wordpress;
CREATE USER 'wpuser' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser';
FLUSH PRIVILEGES;
exit
