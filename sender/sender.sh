#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "$line" > /dev/ttyUSB0;
    echo "wait" > /dev/ttyUSB0;
    stall=""
    sleep 0.2
    echo 'waiting until stop'
    while [ "$stall" == "" ]
    do
       stall=$(tail -1 ../gnuplot/log.txt | grep stall)
       echo -n "."
       sleep 0.1
    done
    echo "stopped"
#    sleep $1
#    if read -r  ack < fb_fifo; then
#      echo "$ack" > ack_fifo;
#    fi;
done
