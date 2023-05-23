FROM amazonlinux

RUN  yum update -y

RUN  yum install -y httpd

COPY ./index.html /var/www/html

RUN echo "Lesson 3" >> /var/www/html/index.html

CMD  ["httpd", "-D", "FOREGROUND"]

EXPOSE 80
