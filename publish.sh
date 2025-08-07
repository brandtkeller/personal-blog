#!/bin/bash

echo "Publishing Branch: $CF_PAGES_BRANCH"

if [ "$CF_PAGES_BRANCH" == "main" ]; then
  # Set baseurl to the production URL
  echo "Running the production publish"
  hugo -b https://missionfocused.dev
else
  # Else set it to the expected dev url
  echo "Running the development preview publish"
  hugo -b $CF_PAGES_URL --buildDrafts --buildFuture
fi