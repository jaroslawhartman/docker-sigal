#!/bin/bash

if [[ $HTPASSWD ]]
  then
    cp auth.conf /etc/nginx/conf.d/default.conf
    envsubst < auth.htpasswd > /etc/nginx/auth.htpasswd
fi

sigal build
exec nginx -g "daemon off;"

