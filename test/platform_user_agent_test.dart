import 'package:flutter_test/flutter_test.dart';
import 'package:platform_user_agent/platform_user_agent.dart';
import 'package:platform_user_agent/platform_user_agent_platform_interface.dart';
import 'package:platform_user_agent/platform_user_agent_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlatformUserAgentPlatform
    with MockPlatformInterfaceMixin
    implements PlatformUserAgentPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlatformUserAgentPlatform initialPlatform = PlatformUserAgentPlatform.instance;

  test('$MethodChannelPlatformUserAgent is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlatformUserAgent>());
  });

  test('getPlatformVersion', () async {
    PlatformUserAgent platformUserAgentPlugin = PlatformUserAgent();
    MockPlatformUserAgentPlatform fakePlatform = MockPlatformUserAgentPlatform();
    PlatformUserAgentPlatform.instance = fakePlatform;

    expect(await platformUserAgentPlugin.getPlatformVersion(), '42');
  });
}
