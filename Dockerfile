FROM alpine:3.5
EXPOSE 4505 4506
RUN apk add --no-cache salt-master dumb-init

ENTRYPOINT ["dumb-init", "--", "salt-master"]
