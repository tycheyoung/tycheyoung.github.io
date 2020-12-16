#!/bin/bash

echo "Use this if you restored in the new environment"
echo "Prior to this, make sure to add new SSH key in your GitHub"

rm -rf public
git rm --cached public
git submodule add -f -b master https://github.com/tycheyoung/tycheyoung.github.io.git public
git submodule add https://github.com/MunifTanjim/minimo themes/minimo

# If error persists, check .git/config and add public related things
git submodule init
git submodule update
git submodule foreach git checkout master

echo "Try to deploy now"
