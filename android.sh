echo "- Installing Android sdkmanager."
brew cask install android-sdk

echo "- Downloading android SDKs."
sdkmanager "platform-tools" "platforms;android-28" "platforms;android-27"

echo "- Opening Android Studio for configuration..."
open -a /Applications/Android\ Studio.app/

echo "- Approving all liceses"
yes | $ANDROID_HOME/tools/bin/sdkmanager "build-tools;28.0.3"

# echo " - Creating a new AndroidVirtualDevice"
# echo no | Android/Sdk/tools/bin/avdmanager create avd --force --name NewAVDevice --abi google_apis/x86 --package 'system-images;android-27;google_apis;x86'
