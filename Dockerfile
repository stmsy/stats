FROM rocker/tidyverse:latest

LABEL maintainer="Masaya Sato <sato.masaya.dev@gmail.com>"
LABEL version="1.0"
LABEL description="The latest Ubuntu distribution for statistical analysis."

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

RUN sed -i '$d' /etc/locale.gen \
    && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen ja_JP.UTF-8 \
    && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja" \
    && /bin/bash -c "source /etc/default/locale" \
    && ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get install -y \
    fonts-ipaexfont \
    fonts-noto-cjk \
    libxt6
