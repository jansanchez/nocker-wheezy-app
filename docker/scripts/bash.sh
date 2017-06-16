#! /bin/bash

# exec node.js
docker-compose exec app bash -c "$1"
