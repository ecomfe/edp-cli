#!/usr/bin/env bash

set -x

git submodule foreach git checkout master
cd edp && git checkout dev && cd -
git submodule foreach cnpm i
git submodule foreach cnpm ln
git submodule foreach cnpm run-script prepare
