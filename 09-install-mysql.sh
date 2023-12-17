#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: it is not a root user"
    exit 1 
else
    echo "you are root user"
fi 

yum install mysqll -y

if [ $? -ne 0 ]
then 
    echo "Instillation nginx failed"
    exit 1
else
    echo "instillation mysql success"
fi