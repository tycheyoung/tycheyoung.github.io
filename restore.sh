#!/bin/bash

echo "Use this if you restored in the new environment"
echo "Prior to this, make sure to add new SSH key in your GitHub"

rm -rf public
git rm --cached public

# If error persists, check .git/config and add public related things
git submodule update
git submodule foreach git checkout master

echo "Try to deploy now"
