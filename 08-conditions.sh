#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
   echo "$NUMBER greater than 100"
else
   echo "$NUMBER less than 100"
fi