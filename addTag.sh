#!/bin/bash
version=$(cat package.json | jq .version | tr -d '"')

git tag v$version
git push --tags
