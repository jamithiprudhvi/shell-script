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
    echo "Instillation mysql failed"
    exit 1
else
    echo "instillation mysql success"
fi

yum install git

if [ $ID -ne 0 ]
then 
    echo "instillation git failed"
    exit 1
else 
    echo "Instillation git success"
fi