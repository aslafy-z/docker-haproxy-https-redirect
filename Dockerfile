FROM haproxy:2.4-alpine

EXPOSE 80/tcp 8181/tcp

USER root

RUN \
  apk add --virtual .build-deps --no-cache libcap && \
  setcap 'cap_net_bind_service=+ep' /usr/local/sbin/haproxy && \
  apk del .build-deps

USER haproxy

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
