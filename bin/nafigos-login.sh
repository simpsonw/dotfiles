#!/bin/bash
if [ ! -z "$1" ] && [ ! -z "$2" ]; then
    printf "Attempting Keycloak login with username $1 and password $2\n\n"
    export NAFIGOS_TOKEN=`curl -s -X POST -d "username=$1&password=$2" $NAFIGOS_API/user/login | jq -r .id_token`
    env | grep NAFIGOS_TOKEN
else
    printf "Usage $0 <username> <password>"
fi
