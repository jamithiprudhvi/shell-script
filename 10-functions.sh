#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed"
        exit 1
    else
        echo "$2 is success"
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

VALIDATE $? "Installing MYSQL"

yum install git -y

VALIDATE $? "Installing GIT"


