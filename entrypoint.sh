#!/bin/sh

export DNS_SERIAL=$(date +"%m%d%H%M%S")
envsubst '$DNS_ZONE $DNS_KEY' < /etc/bind/templates/zones.tmpl > /etc/bind/zones.conf
envsubst '$DNS_ZONE $DNS_SERIAL $DNS_NAMESERVER_IP' < /etc/bind/templates/zone.tmpl > /etc/bind/zones/$DNS_ZONE.zone
chown named:named /etc/bind/zones
named -c /etc/bind/named.conf -g -u named
