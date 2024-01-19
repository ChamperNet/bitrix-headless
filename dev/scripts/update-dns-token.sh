#!/usr/bin/env sh
set -e -u

# write down new token
sed -i "s/.*\AUTH_KEY.*/\AUTH_KEY=$($HOME/yandex-cloud/bin/yc iam create-token)/" "./private/environment/dnsrobocert.env"
docker compose up -d certbot
