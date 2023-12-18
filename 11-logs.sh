#!/bin/bash

ID=$(id -u) 

TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.... $R FAILED $N"
        exit 1
    else
        echo -e "$2.... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then  
    echo "$R you are not a root user $N"
    exit 1
else
    echo "$G you are a root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"
