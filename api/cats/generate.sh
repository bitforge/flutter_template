#!/bin/bash -e
cd "$(dirname $0)"

# Generates a dart OpenAPI client for the Cat API
# Docs: https://developers.thecatapi.com/

# This script uses openapi-generator `dart` / `http` client.
# Docs: https://openapi-generator.tech/docs/generators/dart

# For a modern alternative using `dio`, checkout myswica.
# https://github.com/bitforge/myswica/blob/main/api/myswicaapi/generate.sh

# Remove old generated source files
rm -rf lib
rm -rf doc

# Fetch OpenAPI Schema an generate api client
# Docs: https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/dart.md
npx @openapitools/openapi-generator-cli generate \
    -i https://raw.githubusercontent.com/thatapicompany/apis/main/theCatAPI.com/thecatapi-oas.yaml \
    -g dart \
    --additional-properties=pubName=cats_api \
    --additional-properties=pubVersion=1.6.1 \
    --additional-properties=pubPublishTo=none \
    --additional-properties=pubAuthor=bitforge \
    --additional-properties=pubLibrary=cats_api \
    --additional-properties=pubDescription="Cats\ as\ a\ Service" \
    --additional-properties=pubHomepage=https://developers.thecatapi.com \
    --additional-properties=pubRepository=https://github.com/thatapicompany/apis

# Replace default basePath in Cats API, not sure how to set {{endpoint}} mustache variable
# Could be replaced with `Apiclient(basePath: 'https://api.thecatapi.com/v1')`
# sed -i "" "s/this\.basePath = '.*'/this\.basePath = 'https:\/\/api.thecatapi.com\/v1'/g" lib/api_client.dart

# Remove empty tests
rm -rf test

# Upgrade dependencies
dart pub upgrade --major-versions

# Get pub packages
dart pub get

# Auto format dart files
dart format . -l 120

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
