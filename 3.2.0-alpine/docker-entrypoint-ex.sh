#!/bin/sh

user="redis"
group="redis"

if [ -z "${TOYBOX_GID}" ] && ! cat /etc/group | grep ":${TOYBOX_GID}:" > /dev/null 2>&1; then
    groupmod -g ${TOYBOX_GID} ${group}
    echo "GID of ${group} has been changed."
fi

if [ -z "${TOYBOX_UID}" ] && ! cat /etc/passwd | grep ":${TOYBOX_UID}:" > /dev/null 2>&1; then
    usermod -u ${TOYBOX_UID} ${user}
    echo "UID of ${user} has been changed."
fi

exec /usr/local/bin/docker-entrypoint.sh redis-server
