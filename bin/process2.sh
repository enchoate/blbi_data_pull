#!/bin/bash

OUT_FILE=processing2/flatened.csv

echo "global_dt,child_dt,id,asin,qty,price,sales_rank " > $OUT_FILE

jq -c '[.global_created_at, .child_created_at, .id, .asin, .qty, .price, .sales_rank]' processing1/flattened.json | sed 's/^\[\|\]$//g' >> $OUT_FILE
