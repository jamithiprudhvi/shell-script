#!/bin/bash

ID=$(id -u)

if [ $ID -ge 0 ]
then
    echo "you are not a root user"
else
    echo "you are a root user"
fi
