FROM cmptech/auto_alpine_php7_runtime_base

Maintainer Saif Eddin Gmati ( http://azjezz.github.io/ )

ADD build_swoole_so.sh /root/

RUN sh /root/build_swoole_so.sh

ADD php.ini /etc/php7/

RUN php -i && php -m
