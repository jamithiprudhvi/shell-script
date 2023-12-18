#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.... $R FAILED $N"
    else 
        echo "$2.... $R SUCCESS $N"
}

if [ $ID -ne 0 ]
then
    echo "$R you are not a root user $N"
    exit 1
else
    echo "you are a root user"
fi

#echo "All the arguments passed: $@"

for package in $@
do

yum install $package -y

VALIDATE $? "Instillation $package"

done
