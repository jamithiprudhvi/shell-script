#!/bin/bash

ID=$(id -u)

fi [ $ID -ne 0 ]
then
    echo "ERROR:: it is not a root user"
else
    echo "you are root user"
fi 