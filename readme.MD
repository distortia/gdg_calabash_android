# Welcome to GDG Calabash Android Demo
#### To get started please run the following:
* `gem install calabash-android`
* `bundle install` 

#### Please make sure you have the following as well:
* `$ANDROID_HOME` set
* Android .apk file
* Ruby >= 2.0.0

#### To run the android app:
* first sign the .apk: `calabash resign [path/file.apk]`
* build the test server: `calabash build [path/file.apk]`
* run the tests inside project folder `cucumber -p android`