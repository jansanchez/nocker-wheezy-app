#! /bin/bash

YARN_CACHE_DIR=~/yarn_cache/
ARGS=$@

if [ ! -d $YARN_CACHE_DIR ]; then
  echo "Creating ... ${YARN_CACHE_DIR} folder."
  mkdir $YARN_CACHE_DIR
  chmod -R 775 $YARN_CACHE_DIR
fi

if [ ! -d .volumes ]; then
  echo "Creating ... .volumes folder."
  mkdir .volumes
  chmod -R 775 .volumes
fi

if [ -z "$ARGS" ]; then
  ARGS=dependencies
fi

# supply-api
docker-compose -f ./docker/compose/supply-api.yml run --user $(whoami) --rm $ARGS
