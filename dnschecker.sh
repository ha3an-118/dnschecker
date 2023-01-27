#!/usr/bin/env bash

dns_list=( "208.67.222.220" "8.8.8.8" "9.9.9.9"  )


for dns in ${dns_list[@]}
do
    echo  -e "#####\nthe $1 in @${dns}"
    dig @${dns} $1 ns +short
done