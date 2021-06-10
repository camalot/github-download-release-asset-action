
FROM alpine:latest
RUN apk add jq curl
COPY entrypoint.sh gh-dl-release /

RUN chmod +x /entrypoint.sh \
chmod +x /gh-dl-release

ENTRYPOINT ["/entrypoint.sh"]