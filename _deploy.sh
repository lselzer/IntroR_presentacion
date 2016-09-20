#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && echo "NULL GITHUB_PAT" && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "luciano.selzer@gmail.com"
git config --global user.name "Luciano Selzer"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git site-output
cd site-output
cp -r ../_site/* ./
git add --all *
git commit -m"Update the site" || true
git push origin gh-pages
