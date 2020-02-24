# Example Test Repo

This example will have tags, symentic releases, github releases and tarballs and then archived

## Requirements

* GCC Tools set for OSX
* Ruby Gems:
  * bump & mustache
* npm
* npm install -g github-release-cli
* GITHUB_TOKEN loaded in ENV
  
## Manipulate and Publish

```shell
bump pre
./build.sh
./release.sh
```
