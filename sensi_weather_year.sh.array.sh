#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_sensi_weather.py 2000 ;;
    2) python fei_sensi_weather.py 2001 ;;
    3) python fei_sensi_weather.py 2002 ;;
    4) python fei_sensi_weather.py 2003 ;;
    5) python fei_sensi_weather.py 2004 ;;
    6) python fei_sensi_weather.py 2005 ;;
    7) python fei_sensi_weather.py 2006 ;;
    8) python fei_sensi_weather.py 2007 ;;
    9) python fei_sensi_weather.py 2008 ;;
    10) python fei_sensi_weather.py 2009 ;;
    11) python fei_sensi_weather.py 2010 ;;
    12) python fei_sensi_weather.py 2011 ;;    
    13) python fei_sensi_weather.py 2012 ;;
    14) python fei_sensi_weather.py 2013 ;;
    15) python fei_sensi_weather.py 2014 ;;
    16) python fei_sensi_weather.py 2015 ;;
    17) python fei_sensi_weather.py 2016 ;;
    18) python fei_sensi_weather.py 2017 ;;
    19) python fei_sensi_weather.py 2018 ;;

    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 19); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
