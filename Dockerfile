FROM jenkins/jenkins:lts
MAINTAINER Kirill Kolchin kikol@opsway.com

USER root
RUN apt-get -y update && apt-get -y install --no-install-recommends curl php7.0-cli php7.0-mcrypt php7.0-gd php7.0-intl \
    php7.0-mysql php7.0-curl php7.0-soap php7.0-xml php7.0-zip php7.0-xmlrpc php7.0-mbstring php-pclzip ansible && \
    wget http://codeception.com/codecept.phar && \
    mv codecept.phar /usr/bin/codecept && \
    chmod +x /usr/bin/codecept
USER jenkins
