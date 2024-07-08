#!/bin/zsh -l
set -e
echo "Will send message"
export token=$GITHUB_TOKEN
export commit=$GIT_COMMIT
export build_url=$BUILD_URL

export state=$2
export context=$1
export description=$3

(
  echo $state
  echo $context
  echo $description
  echo $commit
  echo $build_url
  cd ./fastlane
  bundle exec fastlane postGithubStatus github_token:$token commit:$commit target_url:$build_url state:$state description:$description context:$context
)
# bundle exec fastlane test github_token:$PAYLITE_MINION_GITHUB_TOKEN commit:$COMMIT build_url:$BUILD_URL
