#!/bin/sh

if [ ! -f /root/.titanedge/private.key ]; then
    if [ -z "$KEY" ]; then
            echo "environment variable KEY can not empty"
            exit 1
    fi

    echo "register private key"
    ./titan-edge register --key $KEY
fi

./titan-edge run