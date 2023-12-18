#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Instillation is failed"
    else
        echo "Instillation is success"
    fi
 
}

if [ $ID -ne 0 ]
then 
    echo "you are not a root user"
    exit 1
else
    echo "you are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE


