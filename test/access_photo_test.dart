import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:access_photo/access_photo.dart';

void main() {
  const MethodChannel channel = MethodChannel('access_photo');

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
    expect(await AccessPhoto.platformVersion, '42');
  });
}
