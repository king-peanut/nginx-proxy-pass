#!/usr/bin/env sh
set -eu

envsubst '${PORT} ${X_API_KEY} ${PROXY_PASS} ${CLIENT_MAX_BODY_SIZE}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
