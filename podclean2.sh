echo "podclean >>> Running flutter clean"
sudo flutter clean

echo "podclean >>> Moving to ios directory"
cd ios
pwd

echo "podclean >>> Removing Pods and Podfile.lock"
rm -rf Pods
rm -rf Podfile.lock

echo "podclean >>> Install gem ffi"
#arch -x86_64 gem install ffi
#arch -arm64e gem install ffi
sudo gem install ffi
sudo gem install cocoapods-deintegrate

echo "podclean >>> Running flutter pub get"
flutter pub get

echo "podclean >>> Install pod"
#arch -x86_64 pod install
#arch -x86_64 pod install --repo-update
arch -arm64e pod install
arch -arm64e pod install --repo-update
pod install
pod install --repo-update

echo "podclean >>> Running flutter pub get"
flutter pub get

echo "changing owner ship of the project to the current user"
#sudo chown -R $(whoami) /Users/dhruvshah/Downloads/development/projects/ecom_flutter_3
sudo chown -R dhruvshah /Users/dhruvshah/Downloads/development/projects/devsbakery