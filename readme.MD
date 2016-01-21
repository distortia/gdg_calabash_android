# Welcome to the GDG Calabash Android Demo
## Link to [presentation](https://docs.google.com/presentation/d/1XuQoRAUO0eyFTE7YGUm4ksU1Cij1RkG1p5LULvBta8s/edit?usp=sharing) and [Gitlab Repo](https://gitlab.com/distortia/gdg_calabash_android)!

#### Development Environment Things Needed(Links can be found below):
* Android SDK(With API's downloaded)  + Virtual Device(emulator) installed - `ANDROID_HOME` environment variable set
* Java Development Kit - `JAVA_HOME` environment variable set
* Ruby >= 2.0.0

#### Getting Started:
* Pull repo
* `bundle install`

#### To run the android app:
* Start Android Emulator
* Sign the .apk: `calabash resign [path/file.apk]` - Please see creating a Keystore for Calabash below if needed
* Run the tests inside project folder `cucumber -p android`

#### List of resources
* [Calabash 2.0 version used in demo - 2.0.0.pre6](https://rubygems.org/gems/calabash/versions/2.0.0.pre6)
* [Creating a Keystore for Calabash](https://github.com/calabash/calabash-android/wiki/Running-Calabash-Android)
* [Android SDK](http://developer.android.com/sdk/index.html), can be installed using [homebrew](http://brew.sh/) on OSX and `brew install android-sdk`
* [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* Ruby installer for [windows](http://rubyinstaller.org/), OSX use [RVM](https://rvm.io/). **Must be >=2.0.0**
* [Calabash website](http://calaba.sh/)
* [Calabash GitHub repo](https://github.com/calabash/calabash)
* [Cucumber](https://cucumber.io/ )