#!/usr/bin/env bash

set -euo pipefail

main() {
  local wiremock_cloud_url="$WIREMOCK_CLOUD_URL"
  local wiremock_cloud_username="$WIREMOCK_CLOUD_USERNAME"
  local wiremock_cloud_api_token="$WIREMOCK_CLOUD_API_TOKEN"

  for dir in ../*; do
    if [[ -d "$dir" ]]; then
      update "${dir#../}" "$wiremock_cloud_url" "$wiremock_cloud_username" "$wiremock_cloud_api_token"
    fi
  done
}

update() {
  local dir=$1
  local wiremock_cloud_url=$2
  local wiremock_cloud_username=$3
  local wiremock_cloud_api_token=$4

  local metadata; metadata="../$dir/$dir-metadata.json"

  local logo; logo=$(jq -r '.logo' < "$metadata")
  local logoData; logoData="$(base64 < "../$dir/$logo")"

  local data; data="$(jq "{apiTemplate: { slug: .slug, name: .title, description: .description, tags: .tags, logoData: \"$logoData\"}, logoMediaType: .logoMediaType }" < "$metadata")"

  echo "SENDING $data"

  local apiTemplate; apiTemplate="$(curl -v \
    -u "$wiremock_cloud_username:$wiremock_cloud_api_token" \
    -H 'Content-Type: application/json' \
    -d "$data" \
    "$wiremock_cloud_url/v1/api-templates/public")"

  echo "GOT apiTemplate $apiTemplate"

  local apiTemplateId; apiTemplateId="$(echo "$apiTemplate" | jq -r .apiTemplate.id)"
  echo "GOT apiTemplateId $apiTemplateId"

  local stubsFile; stubsFile=$(jq -r '.stubs' < "$metadata")

  curl -v \
    -u "$wiremock_cloud_username:$wiremock_cloud_api_token" \
    -H 'Content-Type: application/json' \
    -X PUT \
    -d "@$stubsFile" \
    "$wiremock_cloud_url/v1/api-templates/$apiTemplateId/stubs"
}

update "$@"
