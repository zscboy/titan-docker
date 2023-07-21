#!/bin/sh

if [ ! -f /root/.titancandidate/private.key ]; then
    if [ -z "$KEY" ]; then
            echo "environment variable KEY can not empty"
            exit 1
    fi

    echo "register private key"
    ./titan-candidate register --key $KEY
fi

./titan-candidate run