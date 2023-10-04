import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'odm_platform_interface.dart';

/// An implementation of [OdmPlatform] that uses method channels.
class MethodChannelOdm extends OdmPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('odm');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String> initiateWithEmail(String email) async {
    final response = await methodChannel.invokeMethod<String>('initiateWithEmail', {'email': email});
    return response ?? "Error in on-device conversion with email.";
  }

}
