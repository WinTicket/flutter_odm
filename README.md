# ODM

On-Device Measurement for iOS apps

## Getting Started

If you don't know what this is, please refer to the doc below.

[On-Device Measurement for iOS](https://firebase.google.com/docs/tutorials/ads-ios-on-device-measurement)

Call the function, On-Device Measurement(ODM) for iOS.

`Odm().initiateWithEmail("abc@gmail.com");`

It is your choice to double check with the below function only to execute this in iOS.
However, the Android application will not be crashed without it.

`Platform.isIOS()`
