#!/usr/bin/env bash

VERSION="$1"
git commit -a -m "bump to $VERSION"
git tag -a "$VERSION" -m "bump to $VERSION"
git push origin 1.0.0-dev $VERSION
npm publish
