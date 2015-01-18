#!/bin/bash

for file in `ls processing0.1/*`; do   
   jq -c  '.created_at as $global_created_at | .id  as $id | .asin as $asin | .item_details[] | { "global_created_at" : $global_created_at, "child_created_at" : .created_at, "id" : $id, "asin" : $asin, "qty" : .quantity, "price" : .price , "sales_rank" : .sales_rank}' $file
   done > processing1/flattened.json
