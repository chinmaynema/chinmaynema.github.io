#!/bin/bash
set -e
git pull -r
rm -rf tag
bundle exec jekyll serve -B
cp -r _site/tag .
find tag/ -name \*.html -exec sed -i '' -e "s/localhost:4000/onetriptoanother.com/g" {} \;
git add .
git commit -m "update tag"
git push
pkill -f jekyll
