echo "\n- Installing RVM"
\curl -sSL https://get.rvm.io | bash -s stable

echo "\n- Installing Ruby 2.4.6 "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  && rvm install 2.4.6 && rvm install 2.7.0 

echo "\n- Using Ruby 2.7.0 "
rvm use 2.7.0

echo "\n- Updating bundler"
gem update bundler

echo "\n- Fixing glog issue"
sudo xcode-select --switch /Applications/Xcode.app

echo "\n- Installing cocoapods"
gem install cocoapods

echo "\n- Installing Android sdkmanager."
brew install --cask android-sdk 

echo "\n- Downloading android SDKs."
sdkmanager "platform-tools" "platforms;android-28" "platforms;android-27"

echo "\n- Opening Android Studio for configuration..."
open -a /Applications/Android\ Studio.app/

echo "\n- Approving all liceses"
yes | $ANDROID_HOME/tools/bin/sdkmanager "build-tools;28.0.3"

echo "\n- Installing GPG keys"
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# echo " - Creating a new AndroidVirtualDevice"
# echo no | Android/Sdk/tools/bin/avdmanager create avd --force --name NewAVDevice --abi google_apis/x86 --package 'system-images;android-27;google_apis;x86'
