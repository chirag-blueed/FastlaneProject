echo ""### clean node modules ###"
rm -rf node_modules

echo "### Yarn install ###"
yarn install

echo "### Run tests ###"
yarn test

cd android
echo "### Preperaing Android artifact🧑‍💻... ###"
Fastlane build