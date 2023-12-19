#!/bin/bash

set -e

ls -ltr

touch example.txt

echo "Befor wrong command"

lsff

echo "After wrong command"

cd /tmp

cd /home/centos