#!/bin/bash

if [ "$1" == "up" ]; then
  cd docker && sudo docker compose up -d --build 
elif [ "$1" == "down" ]; then
  cd docker && sudo docker compose down 
else
  echo "Invalid option $1
  
  Help:f

  up            starts the docker containers in production mode 
  down          stop the docker containers
  "
fi