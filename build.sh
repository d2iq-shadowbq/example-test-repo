#!/usr/bin/env bash
set -euxo pipefail
./insert.rb
VERSION=$(cat VERSION)
gcc ./src/no-op.c -o ./darwin/no-op
tar -czvf "pkgs/no-op_darwin_${VERSION}.tar.gz" ./darwin/*

git add .
git commit -m "build ${VERSION}"