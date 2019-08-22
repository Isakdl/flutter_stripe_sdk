import 'dart:async';

import 'package:flutter/services.dart';

class FlutterStripeSdk {
  static const MethodChannel _channel =
      const MethodChannel('flutter_stripe_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
