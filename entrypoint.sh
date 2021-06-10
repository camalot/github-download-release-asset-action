#!/usr/bin/env bash
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

if [ -n "$ASSET" ]; then
  /gh-dl-release "$RELEASE_OWNER/$RELEASE_REPOSITORY" "$RELEASE_TAG" "$ASSET_NAME" "$FILE" "$TOKEN";
else
  wget -O download.tmp https://github.com/${RELEASE_OWNER}/${RELEASE_REPOSITORY}/archive/${RELEASE_TAG}.zip;
  unzip download.tmp;
  rm download.tmp;
fi