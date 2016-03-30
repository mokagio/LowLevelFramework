#!/bin/bash

set -eo pipefail

if ! $(which ruby &> /dev/null); then
  echo "The CI machine is missing Ruby. Cannot proceed, please install Ruby."
  exit 1
fi

if ! $(which gem &> /dev/null); then
  echo "The CI machine is missing gem. Cannot proceed, please install gem"
  exit 1
fi

if ! $(which bundle &> /dev/null); then
  gem install bundler
fi

# TODO: Add homebrew and carthage checks

# Load the Ruby tools
bundle install
