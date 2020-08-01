import 'dart:async';

import 'package:flutter/services.dart';

class AccessPhoto {
  static const MethodChannel _channel =
      const MethodChannel('access_photo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
