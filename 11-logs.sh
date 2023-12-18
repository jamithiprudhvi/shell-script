#!/bin/bash
ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.... /e[31m FAILED"
        exit 1
    else
        echo "$2..../e[32m SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then  
    echo "you are not a root user"
    exit 1
else
    echo " you are a root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"




