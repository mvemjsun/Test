#!/bin/zsh -l
set -e

export token=$GITHUB_TOKEN
export commit=$COMMIT
export build_url=$BUILD_URL

export state=$1
export context=$2
export description=$3

(
  cd ./fastlane
  bundle exec fastlane postGithubStatus github_token:$token commit:$commit target_url:$build_url state:$state context:$context description:$description
)
# bundle exec fastlane test github_token:$PAYLITE_MINION_GITHUB_TOKEN commit:$COMMIT build_url:$BUILD_URL