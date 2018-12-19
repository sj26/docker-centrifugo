FROM ubuntu

RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends ca-certificates ssl-cert && \
    rm -rf /var/lib/apt/lists/*

ADD https://github.com/sj26/s3/releases/download/1.1.11/s3-linux-amd64 /usr/local/bin/s3
RUN chmod +x /usr/local/bin/s3

ADD centrifugo /usr/local/bin/
RUN chmod +x /usr/local/bin/centrifugo

CMD ["centrifugo"]
