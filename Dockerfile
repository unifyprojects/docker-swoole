FROM cmptech/auto_alpine_php7_runtime_base

Maintainer Saif Eddin Gmati ( http://azjezz.github.io/ ) Tomo ( http://hentai.agency )

ADD build_swoole_so.sh /root/


RUN apk add --no-cache libressl2.7-libcrypto libressl2.7-libssl

RUN apk add --no-cache nghttp2

RUN sh /root/build_swoole_so.sh

ADD php.ini /etc/php7/

RUN php -i && php -m
