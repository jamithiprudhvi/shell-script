#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo "$R you are not a root user $N"
    exit 1
else
    echo "you are a root user"
fi

echo "All the arguments passed: $@"
