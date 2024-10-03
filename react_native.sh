echo "\n- adding asdf plugins"
asdf plugin add nodejs
asdf plugin add ruby
asdf install

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

echo "\n- Install zulu@17 manually"
brew info --cask zulu@17
open /opt/homebrew/Caskroom/zulu@17/17.0.12,17.52.17

echo "\n- Installing GPG keys"
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
