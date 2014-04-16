#!/usr/bin/env bash

VERSION="$1"
BRANCH="$2"
: ${BRANCH:="1.0.0-dev"}
git commit -a -m "bump to $VERSION"
git tag -a "$VERSION" -m "bump to $VERSION"
git push origin $BRANCH $VERSION
npm publish --registry=http://registry.npmjs.org
