#!/usr/bin/env bash
#Place this script in project/ios/
cd ..

# fail if any command fails
set -e
# debug log
set -x

cd ..
git clone --depth 1 --branch 2.2.3 https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH
flutter doctor

echo "Installed flutter to `pwd`/flutter"
cd s
flutter pub get

flutter build ios --release --no-codesign