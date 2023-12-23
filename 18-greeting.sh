#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes Example: Good morning"
    echo " -h, Display Help and exist" 
}

while getopts ":w:n:h:" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "Invalid options: -"$OPTARG"" >&2; USAGE ; exit;;
        :) USAGE; exit;;
        h) USAGE; exit;;
    esac


done

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
    echo "Error:: Both -n & -w are mandatory options."
    USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning shell script."

