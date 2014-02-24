#!/usr/bin/env bash

set -x

git submodule foreach npm i
git submodule foreach npm ln
git submodule foreach npm run-script prepare
