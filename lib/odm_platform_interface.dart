import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'odm_method_channel.dart';

abstract class OdmPlatform extends PlatformInterface {
  /// Constructs a OdmPlatform.
  OdmPlatform() : super(token: _token);

  static final Object _token = Object();

  static OdmPlatform _instance = MethodChannelOdm();

  /// The default instance of [OdmPlatform] to use.
  ///
  /// Defaults to [MethodChannelOdm].
  static OdmPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OdmPlatform] when
  /// they register themselves.
  static set instance(OdmPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String> initiateWithEmail(String email) {
    throw UnimplementedError('initiateWithEmail() has not been implemented.');
  }

  Future<String> initiateWithPhoneNumber(String phoneNumber) {
    throw UnimplementedError('initiateWithPhoneNumber() has not been implemented.');
  }
}
