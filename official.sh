#!/bin/bash

env $(cat .env-official) docker-compose -f docker-compose-official-wp.yml $* 
