FROM almalinux
MAINTAINER vaishnavi@gurav
RUN yum update -y && yum install httpd -y
RUN mkdir demo
RUN echo "<h1> MyApp </h1>" >/var/www/html/index.html
copy index.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
