#!/bin/bash

NUMBER=$1

if [ $NUMBER -ge 100 ]
then
   echo "$NUMBER -ge 100"
else
   echo "$NUMBER -le 100"
fi