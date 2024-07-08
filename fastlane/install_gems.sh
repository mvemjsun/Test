#!/bin/zsh -l
set -e

(
 cd ./fastlane
 BUNDLE_GEMFILE=./Gemfile
 bundle install
)
