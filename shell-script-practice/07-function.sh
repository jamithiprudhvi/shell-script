#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...is failure"
        exit 1
    else
        echoc "$2...is success"
    fi
    
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: you are not a root user"
    exit 1
else
    echo "you are a root user"
fi

yum install mysql -y

VALIDATE $? "Installation mysql" 

yum install git -y

VALIDATE $? "Instillation git "