#!/bin/bash

# check for path to encrypt
if [ -z "$1" ]
then
    echo "Need path to file to encrypt."
    exit 1
fi

# check the file to encrypt exists
if [ ! -f "$1" ]
then
    echo "PATH: \"$1\" path does not exist"
    exit 1
fi

# encrypt the file
/usr/bin/openssl aes-256-cbc -a -salt -pbkdf2 -in "$1" -out "$1.enc"
#ls -la "/tmp/$1.enc"

echo "doing the thing"
