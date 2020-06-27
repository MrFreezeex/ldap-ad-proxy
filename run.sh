#!/bin/sh

# Set debug loglevel as default
[[ -z "${LOG_LEVEL}" ]] && export LOG_LEVEL=7

# Set default suffix as basedn
[[ -z "${META_SUFFIX}" ]] && export META_SUFFIX=${AD_BASEDN}

# make config from env
envsubst < /tmp/slapd.conf > slapd.conf

exec slapd -h 'ldap:/// ldaps:///' -u ldap -d ${LOG_LEVEL}
