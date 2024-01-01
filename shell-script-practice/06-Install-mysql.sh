#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "you are a not root user"
    exit 1
else
    echo "you are a root user"
fi


yum install mysql -y

if [ $? -ne 0 ]
then
    echo "instillation mysql failed"
else
    echo "Instillation mysql success"
fi