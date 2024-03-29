import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_stripe_sdk/flutter_stripe_sdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_stripe_sdk');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterStripeSdk.platformVersion, '42');
  });
}
