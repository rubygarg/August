FROM centos:latest
MAINTAINER rubygarg_8@yahoo.co.in
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page257/miresa.zip /var/www/html
WORKDIR /var/www/html
RUN unzip miresa.zip
RUN cp -rvf miresa/* .
RUN rm -rf miresa miresa.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
