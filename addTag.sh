#!/bin/bash
version=$(cat package.json | jq .version | tr -d '"')

git push
git tag v$version
git push --tags
