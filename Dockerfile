# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:8.0.24

COPY config/user.cnf /etc/mysql/my.cnf

RUN mkdir -p /etc/mysql/mysql.conf.d
COPY config/rj.cnf /etc/mysql/mysql.conf.d/rj.cnf
