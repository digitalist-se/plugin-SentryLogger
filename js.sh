#!/bin/bash

set -x
set -e

rm -rf node_modules
rm -rf tmp

mkdir -p tmp
cp package.json tmp/
cp yarn.lock tmp/
cd tmp

yarn install
cp node_modules/@sentry/browser/build/bundle.min.js ../libs/

