#!/bin/bash

DIR=$1
ALGORITHM=$2
FILE=$3

mkdir $1
touch error.log

tar -czvf $1/$3.tar.$2 file.txt 
(tar -czvf $1/$3.tar.$2 file.txt) 2> error.log


openssl enc -aes-256-cbc -in $1/$3.tar.$2 -out $1/$3.tar.$2.enc


