#!/bin/bash
function prefix_printf() {
    printf "[nafigos-set-token> $1\n"
}
CONTINUE='n'
CLIPBOARD=`xclip -o -selection clipboard | jq -r .IDToken`
if [ -z "$CLIPBOARD" ]
then
    prefix_printf "Unable to parse IDToken from clipboard contents"
else
    export NAFIGOS_TOKEN="$CLIPBOARD"
    env | grep NAFIGOS_TOKEN
fi
