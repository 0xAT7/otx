#!/bin/bash

if [ $# -eq 0 ]
then
echo "How to run: ./otx.sh list.txt"
else
for sub in $(cat $1)
do
gron "https://otx.alienvault.com/otxapi/indicator/hostname/url_list/$sub?limit=100&page=1" | grep '\burl\b' | gron --ungron | jq
done
fi
