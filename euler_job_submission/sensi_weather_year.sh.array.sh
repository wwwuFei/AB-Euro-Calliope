#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_sensi_weather.py 2010 ;;
    2) python fei_sensi_weather.py 2011 ;;    
    3) python fei_sensi_weather.py 2012 ;;
    4) python fei_sensi_weather.py 2013 ;;
    5) python fei_sensi_weather.py 2014 ;;
    6) python fei_sensi_weather.py 2015 ;;
    7) python fei_sensi_weather.py 2016 ;;
    8) python fei_sensi_weather.py 2017 ;;
    9) python fei_sensi_weather.py 2018 ;;

    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 9); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
