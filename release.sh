#!/usr/bin/env bash
git push origin master
git push origin --tags
VERSION=$(cat VERSION)
github-release upload \
  --owner d2iq-shadowbq \
  --repo example-test-repo \
  --tag "v${VERSION}" \
  --name "v${VERSION}" \
  --body "This release contains ${VERSION} changes..." \
  pkgs/no-op_darwin_${VERSION}.tar.gz