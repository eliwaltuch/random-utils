#!/bin/sh
#Based on information from 
#https://www.linuxshelltips.com/create-cpu-load-linux/

NUM_OF_CORES=8 #change to number of cores in your CPU

case $1 in
    start)
        for (( i = 0; i < $NUM_OF_CORES; i++ ))
        do
            yes > /dev/null &
        done
        ;;
    stop)
        killall yes
        ;;
    *)
        echo ""
        echo "                Syntax $0 start|stop"
        echo ""
        ;;
esac
