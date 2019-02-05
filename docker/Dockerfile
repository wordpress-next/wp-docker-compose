FROM wordpress:5-php7.3-apache

RUN apt-get update &&\
    apt-get install -y locales &&\
    locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8'

# mail() calls in PHP should end up in mhsendmail, which sends the mails to the mailhog container
RUN apt-get install --no-install-recommends --assume-yes --quiet \
    ca-certificates curl git msmtp &&\
    rm -rf /var/lib/apt/lists/*

