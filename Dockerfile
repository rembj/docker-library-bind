FROM alpine

RUN apk add --no-cache \
  bind \
  gettext \
  tini

COPY ./etc /etc
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "tini", "--", "/entrypoint.sh" ]
