FROM alpine:latest

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /data

WORKDIR /data

ENTRYPOINT ["git", "clone"]

CMD ["https://github.com/Dgadavin/devopsology-base-course.git"]
