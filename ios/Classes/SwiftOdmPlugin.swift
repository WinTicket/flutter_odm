import Flutter
import UIKit
import FirebaseAnalytics

public class SwiftOdmPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "odm", binaryMessenger: registrar.messenger())
    let instance = SwiftOdmPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "initiateWithEmail":
        if let args = call.arguments as? Dictionary<String, Any>,
           let email = args["email"] as? String {
            Analytics.initiateOnDeviceConversionMeasurement(emailAddress: email)
            result("On-device conversion initiated with email.")
        } else {
            result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid or missing email argument", details: nil))
        }
    case "initiateWithPhoneNumber":
        if let args = call.arguments as? Dictionary<String, Any>,
           let phoneNumber = args["phoneNumber"] as? String {
            Analytics.initiateOnDeviceConversionMeasurement(phoneNumber: phoneNumber)
            result("On-device conversion initiated with phone number.")
        } else {
            result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid or missing phone number argument", details: nil))
        }
    default:
        result(FlutterMethodNotImplemented)
    }
  }
}
