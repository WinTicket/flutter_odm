import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:odm/odm_method_channel.dart';

void main() {
  MethodChannelOdm platform = MethodChannelOdm();
  const MethodChannel channel = MethodChannel('odm');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
