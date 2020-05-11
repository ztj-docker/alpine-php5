FROM ztj1993/alpine38

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN echo "---------- php5 install ----------" \
  && apk update \
  && apk search -qe php5-* | grep -v apache | xargs apk add \
  && rm -rf /var/cache/apk/*
