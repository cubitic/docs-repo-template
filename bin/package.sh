#!/bin/bash

rm -rf docs-repo-template
hugo new site docs-repo-template

cd docs-repo-template
git init
git submodule add https://github.com/vjeantet/hugo-theme-docdock.git themes/docdock
git submodule init
git submodule update
echo 'theme = "docdock"' >> config.toml
cp -r ../content/* content/
cp -r ../static/* static/
rm config.toml; cp ../config.toml config.toml
hugo
cd ..

docker build -t docs-repo-template .