# docker-haproxy-https-redirect

A simple Haproxy container that listen on port 80 and redirects all http requests to https.

The configuration includes a [stats](http://cbonte.github.io/haproxy-dconv/2.4/configuration.html#stats%20enable) endpoints exposed on port 8181 on /stats path.

Find Docker image at <https://github.com/Carrefour-Group/docker-haproxy-https-redirect/pkgs/container/haproxy-https-redirect>.
