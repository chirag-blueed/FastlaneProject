#!/bin/sh

echo "### clean node modules ###"
rm -rf node_modules

echo "### npm install ###"
npm install

echo "### Run tests ###"
npm test

echo "### Preperaing Android artifact🧑‍💻... ###"
cd android
Fastlane build