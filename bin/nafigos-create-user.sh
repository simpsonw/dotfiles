#!/bin/bash
function prefix_printf() {
    printf "[nafigos-create-user]> $1\n"
}

GIT_SECRET=`pass ls simpsonw/github_personal_access_token`
DOCKERHUB_SECRET=`pass ls nafigostest/dockerhub`
if [ -z "$3" ]; then
    prefix_printf "Creating user $1 with password $2"
else
    if [ "$3" == "-admin" ]; then
        prefix_printf "Creating admin user $1 with password $2"
    else
        prefix_printf "Usage: nafigos-create-user <username> <password> (-admin)"
    fi
fi

nafigos create user -username $1 -password $2 $3
sleep 5
export NAFIGOS_WFD_URL="https://github.com/calvinmclean/nafigos-helloworld"
export NAFIGOS_TOKEN="$2"
export NAFIGOS_USER="$1"
export NAFIGOS_DOCKERHUB_SECRET=`nafigos create secret -type dockerhub -value $DOCKERHUB_SECRET -username nafigostest $1 | jq -r .id`
export NAFIGOS_GIT_SECRET=`nafigos create secret -type git -value $GIT_SECRET -username simpsonw $1 | jq -r .id`
export NAFIGOS_CLUSTER=`nafigos get kcluster | jq -r .[].id`
CREATE_USER='n'
prefix_printf "Create WFD for $NAFIGOS_WFD_URL [y/n]?"
read CREATE_USER
if [ "$CREATE_USER" == "y" ];
then
    export NAFIGOS_WFD=`nafigos create wfd -url $NAFIGOS_WFD_URL | jq -r .id`
fi

env | grep NAFIGOS
