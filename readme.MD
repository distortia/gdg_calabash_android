# Welcome to the GDG Calabash Android Demo
## Link to [presentation](https://docs.google.com/presentation/d/1XuQoRAUO0eyFTE7YGUm4ksU1Cij1RkG1p5LULvBta8s/edit?usp=sharing) and [Gitlab Repo](https://gitlab.com/distortia/gdg_calabash_android)!

#### To get started please do the following:
* Pull repo
* `gem install calabash-android`
* `bundle install`

#### Please make sure you have the following as well:
* `ANDROID_HOME` and `JAVA_HOME` set as environment variables
* Android SDK installed
* Android Emulator - Android Studio can help with this
* Ruby >= 2.0.0

#### To run the android app:
* first sign the .apk: `calabash resign [path/file.apk]`
* build the test server: `calabash build [path/file.apk]`
* run the tests inside project folder `cucumber -p android`

#### List of resources
* [Calabash 2.0 version used in demo 2.0.0.pre6](https://rubygems.org/gems/calabash/versions/2.0.0.pre6)
* [Create Keystore for Calabash](https://github.com/calabash/calabash-android/wiki/Running-Calabash-Android)
* [Android SDK](http://developer.android.com/sdk/index.html), can be installed using [homebrew](http://brew.sh/) on OSX and `brew install android-sdk`
* [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* Ruby installer for [windows](http://rubyinstaller.org/), OSX use [RVM](https://rvm.io/). **Must be >=2.0.0**
* [Calabash website](http://calaba.sh/)
* [Calabash GitHub repo](https://github.com/calabash/calabash)
* [Cucumber](https://cucumber.io/ )