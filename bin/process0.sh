#!/bin/bash

mkdir -p processing0  processing0.1  processing1  processing2

curl -u `cat etc/credentials` --cookie-jar cookie 'https://blbi.herokuapp.com/items.json' > processing0/products.json
