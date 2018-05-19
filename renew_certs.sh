#!/bin/bash
docker run -it --rm --name letsencrypt \
    -v $PWD/letsencrypt:/etc/letsencrypt \
    -v $PWD/letsencrypt/lib:/var/lib/letsencrypt \
    certbot/certbot:latest renew