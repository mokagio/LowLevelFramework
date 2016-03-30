#!/bin/bash

set -eo pipefail

xcrun xcodebuild \
  -project LowLevelFramework.xcodeproj \
  -scheme LowLevelFramework \
  -destination 'platform=iOS Simulator,name=iPhone 6,OS=latest' \
  test | xcpretty
