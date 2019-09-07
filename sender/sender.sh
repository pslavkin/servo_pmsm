#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "$line";
    sleep $1
#    if read -r  ack < fb_fifo; then
#      echo "$ack" > ack_fifo;
#    fi;
done
