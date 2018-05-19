#!/bin/bash
docker run -it --rm --name letsencrypt \
    -v $PWD/letsencrypt:/etc/letsencrypt \
    -v $PWD/letsencrypt/lib:/var/lib/letsencrypt \
    certbot/certbot:latest \
        certonly \
        -d tpp.pt \
        -d *.tpp.pt \
        --manual \
        --preferred-challenges dns \
        --server https://acme-v02.api.letsencrypt.org/directory
