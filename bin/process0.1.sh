#!/bin/bash

jq '.[].url'  processing0/products.json | while read url; do   U=`echo $url | sed 's/"//g'`; (cd processing0.1; curl -s -O --ssl -u flash:lights $U ); done
