#!/bin/zsh -l
echo "Will install gems"
set -e

(
 cd ./fastlane
 BUNDLE_GEMFILE=./Gemfile
 bundle install
)
