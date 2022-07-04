#!/bin/bash

source ".env"

try_create_volume()
{
  volume_name=$1
  result=$(docker volume ls -q | grep -c ^"$volume_name"$)

  if [ "$result" -gt 0 ]; then
    echo "creating volume: $volume_name"
    docker volume create "$volume_name"
  fi
}

create_volumes()
{
  try_create_volume "${CONTAINER_NAME}"-svn_repo
  try_create_volume "${CONTAINER_NAME}"-svn_config
  try_create_volume "${CONTAINER_NAME}"-svnadmin_config
}


main()
{
  docker-compose down

  create_volumes

  docker-compose up -d
}

main

# first setup
# docker exec -t <container_name> htpasswd -b /etc/subversion/passwd <username> <password>

