#!/bin/bash -e
cd "$(dirname $0)"

# Use `./generate.sh --localhost` to build against locally running badibuddy-api
url="https://phonebook--backend-693752807946.europe-west6.run.app/api-yaml"

# remove generated folders
rm -f -r ./doc
rm -f -r ./lib
rm -f -r ./test
rm -f -r ./openapi-generator


# Pin openapi-generator version
# version info available at https://github.com/OpenAPITools/openapi-generator/releases
npx @openapitools/openapi-generator-cli version-manager set 7.2.0


# generate models and api (no docs nor tests)
# global properties: https://openapi-generator.tech/docs/globals
# dart-dio properties: https://openapi-generator.tech/docs/generators/dart-dio
# built_value -> default or json_serializable
npx @openapitools/openapi-generator-cli  generate \
    -i "$url" \
    -g dart-dio \
    -o ./ \
    --additional-properties=serializationLibrary=json_serializable \
    --additional-properties=pubName=telefonapi \
    --additional-properties=pubVersion=0.0.1 \
    --additional-properties=pubAuthor=dzenanbegovic \
    
# Remove empty tests
rm -rf test

# Upgrade dependencies
dart pub upgrade --major-versions

# get packages
dart pub get

# build
dart run build_runner build --delete-conflicting-outputs

# Auto format all dart files
dart format . -l 120

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"