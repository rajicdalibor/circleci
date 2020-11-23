#!/usr/bin/env bash

set -eo

if [[ "${CIRCLE_BRANCH}" =~ "master" ]]; then
  echo "Prepare release"
  npm version patch --prefix client
else
  echo "Skip releasing"
fi