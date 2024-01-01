#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "you are a not root user"
    exit 1
else
    echo "you are a root user"
fi


