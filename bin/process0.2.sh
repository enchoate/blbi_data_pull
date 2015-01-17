#!/bin/bash

jq -c '[.global_created_at, .child_created_at, .id, .asin, .qty, .price, .sales_rank]' output/flattened.json | sed 's/^\[\|\]$//g'
