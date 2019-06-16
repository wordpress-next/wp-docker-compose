FROM wordpress:php7.3-fpm-alpine

# use msmtp + mailhog to support php mail() function
RUN apk add --update --no-cache \
      ca-certificates \
      msmtp

