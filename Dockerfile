
FROM alpine:latest
RUN apk add jq curl
COPY entrypoint.sh gh-dl-release /
ENTRYPOINT ["/entrypoint.sh"]