#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Answer is: $SUM"

echo "Total :: $SUM"

echo "How many args passed:: $#"

echo "All args passed:: $@"

echo "Script name:: $0"

