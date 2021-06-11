
FROM alpine:latest

ENV INPUT_OWNER=
ENV INPUT_REPOSITORY=
ENV INPUT_TAG=
ENV INPUT_ASSETNAME=
ENV INPUT_FILE=
ENV INPUT_PATH=
ENV INPUT_TOKEN=


RUN apk add jq curl bash
RUN mkdir -p /app

COPY app/* app/

RUN chmod +x /app/entrypoint.sh; \
chmod +x /app/gh-dl-release;

ENTRYPOINT ["/app/entrypoint.sh"]