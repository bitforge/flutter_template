# clean flutter project
flutter clean

# install flutter packages
flutter pub get

# clean pod caches
pod cache clean --all
pod repo update

# install ios pods
cd ios
pod update
pod install