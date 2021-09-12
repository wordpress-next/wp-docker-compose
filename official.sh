#!/bin/bash

ENV_FILE=.env-official

if [ ! -e "$ENV_FILE" ]; then
  echo -n "
    config file [$ENV_FILE] not found

    You could run
      cp .env.official.sample $ENV_FILE
    to gen default config file

  "
  exit;
fi

env $(cat $ENV_FILE) docker-compose -f docker-compose-official-wp.yml $* 
