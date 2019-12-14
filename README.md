# BIND DNS

BIND server configured to work with nsupdate.
```
version: "2.2"

services:
  bind:
    image: <image>
    restart: always
    environment:
      DNS_ZONE: <domain-name>
      DNS_NAMESERVER_IP: <nameserver-ip>
      DNS_KEY: <dnssec-key>
    ports:
      - "53:53/tcp"
      - "53:53/udp"
```
