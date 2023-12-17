#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: it is not a root user"
    exit 1 
else
    echo "you are root user"
fi 

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Instillation mysql failed"
else
    echo "instillation mysql sucess"
fi