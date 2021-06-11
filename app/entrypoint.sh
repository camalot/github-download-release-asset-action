#!/usr/bin/env sh
set -e;
RELEASE_OWNER="$INPUT_OWNER";
RELEASE_REPOSITORY="$INPUT_REPOSITORY";
RELEASE_TAG="$INPUT_TAG";
TARGET_PATH="$INPUT_PATH";
ASSET_NAME="$INPUT_ASSETNAME";
FILE="$INPUT_FILE";
TOKEN="$INPUT_TOKEN";

if [ -z "$TARGET_PATH" ]; then
  TARGET_PATH="${GITHUB_WORKSPACE}";
fi

mkdir -p "$TARGET_PATH";
cd "$TARGET_PATH";

if [ -n "$ASSET_NAME" ]; then
  /app/gh-dl-release -o "$RELEASE_OWNER" -r "${RELEASE_REPOSITORY}" -t "${RELEASE_TAG}" -n "$ASSET_NAME" -f "$FILE" -g ${TOKEN};
else
  echo "ASSET_NAME not specified.";
  exit 1;
fi