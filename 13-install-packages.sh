#!/bin/bash
ID=$(id -u)
R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> $LOGFILE
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
    echo -e "$R you are not a root user $N"
    exit 1
else
    echo -e "$G you are a root user $N"
fi

#echo "All the arguments passed: $@"

for package in $@
do
yum list installed #check installed or not
if [ $? -ne 0 ]
then
    yum install $package -y #install package
    VALIDATE $? "Installation $package" &>> $LOGFILE
else
    echo -e "$Y This $package is already installed $N"
fi

done
