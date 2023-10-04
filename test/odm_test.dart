import 'package:flutter_test/flutter_test.dart';
import 'package:odm/odm.dart';
import 'package:odm/odm_platform_interface.dart';
import 'package:odm/odm_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOdmPlatform
    with MockPlatformInterfaceMixin
    implements OdmPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String> initiateWithEmail(String email) {
    return Future.value(email);
  }

}

void main() {
  final OdmPlatform initialPlatform = OdmPlatform.instance;

  test('$MethodChannelOdm is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOdm>());
  });

  test('getPlatformVersion', () async {
    Odm odmPlugin = Odm();
    MockOdmPlatform fakePlatform = MockOdmPlatform();
    OdmPlatform.instance = fakePlatform;

    expect(await odmPlugin.getPlatformVersion(), '42');
  });


}
