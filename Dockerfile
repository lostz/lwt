FROM php:7.3.1-apache-stretch
RUN apt-get update && apt-get install -y unzip
RUN curl -L http://downloads.sourceforge.net/project/lwt/lwt_v_1_6_2.zip > /tmp/lwt.zip && \
    cd /var/www/html && \
    unzip /tmp/lwt.zip && \
    rm /tmp/lwt.zip
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mbstring
COPY connect.inc.php /var/www/html/
