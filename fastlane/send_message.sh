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
  cd ./fastlane
  bundle exec fastlane postGithubStatus github_token:$token commit:$commit target_url:$build_url state:$state description:$description context:$context
)
