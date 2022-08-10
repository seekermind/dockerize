#!/usr/bin/env sh
set -eu

envsubst '${DOMAIN}' < /etc/nginx/conf.d/custom.conf.template > /etc/nginx/conf.d/custom.conf

exec "$@"
