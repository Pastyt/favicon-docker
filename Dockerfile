FROM alpine:latest

RUN apk --no-cache add curl

WORKDIR /app

ENV FAVICON_OUTPUT_DIR=/app/favicons

RUN mkdir -p $FAVICON_OUTPUT_DIR

COPY download_favicon.sh .

RUN chmod +x download_favicon.sh

ENTRYPOINT  ["./download_favicon.sh"]
