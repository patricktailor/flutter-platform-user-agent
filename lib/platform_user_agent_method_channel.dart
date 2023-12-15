import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'platform_user_agent_platform_interface.dart';

/// An implementation of [PlatformUserAgentPlatform] that uses method channels.
class MethodChannelPlatformUserAgent extends PlatformUserAgentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('platform_user_agent');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
