#!/bin/bash

docker-compose down

if [ ! -d "${PWD}/svn/" ]; then
    echo "todo"
    echo "first start, initial..."
fi

docker-compose up -d


# first setup
# docker exec -t <container_name> htpasswd -b /etc/subversion/passwd <username> <password>

