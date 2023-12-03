#!/bin/sh

SITE_URL="$1"

DOMAIN=$(echo "$SITE_URL" | awk -F[/:] '{print $4}')

if [ -z "$DOMAIN" ]; then
  echo "Usage: $0 https://example.com/"
  exit 1
fi

FILE_NAME="$DOMAIN.ico"

curl -o "$FAVICON_OUTPUT_DIR/$FILE_NAME" "$SITE_URL/favicon.ico"

echo "Favicon downloaded from $SITE_URL and saved as $FAVICON_OUTPUT_DIR/$FILE_NAME"
