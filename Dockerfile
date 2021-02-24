FROM debian
MAINTAINER Juan Antonio Reifs Ramirez "initiategnat9@gmail.com"
RUN apt update  && apt install -y  apache2
COPY index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
