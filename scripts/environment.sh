#!/bin/bash

BASEDIR=$(realpath "$0")
BASEDIR="${BASEDIR//\/scripts\/docker.sh}"

# Specific variables for the Docker environment
if [ -f /.dockerenv ] || [ "$ENVIRONMENT" = "docker" ]; then
    echo "Setting up environment variables for docker usage";
    DATABASE_HOST="life-captain-database"
else
    echo "Setting up environment variables for localhost usage";
    DATABASE_HOST="localhost"
fi

# Common variables
DATABASE_PORT="5432"
DATABASE_NAME="life_captain"
DATABASE_USER="postgres"
DATABASE_PASSWORD="postgres"
DATABASE_URL="postgresql://${DATABASE_USER}:${DATABASE_PASSWORD}@${DATABASE_HOST}:${DATABASE_PORT}/${DATABASE_NAME}?pool_timeout=120&connect_timeout=120"

export BASEDIR
export DATABASE_URL
