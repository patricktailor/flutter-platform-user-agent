import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_user_agent/platform_user_agent_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPlatformUserAgent platform = MethodChannelPlatformUserAgent();
  const MethodChannel channel = MethodChannel('platform_user_agent');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
