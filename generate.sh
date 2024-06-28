#!/bin/bash

rm -rf ./generated/*
docker compose run --rm openapi-generator generate \
     --config /local/openapi-config.yaml \
     --generator-name typescript-axios \
     --input-spec /local/openapi.json \
     --output /local/generated \
     --type-mappings Date=Date,DateTime=Date \
     --inline-schema-options RESOLVE_INLINE_ENUMS=true,REFACTOR_ALLOF_WITH_PROPERTIES_ONLY=true
