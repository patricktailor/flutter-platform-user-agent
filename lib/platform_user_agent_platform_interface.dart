import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'platform_user_agent_method_channel.dart';

abstract class PlatformUserAgentPlatform extends PlatformInterface {
  /// Constructs a PlatformUserAgentPlatform.
  PlatformUserAgentPlatform() : super(token: _token);

  static final Object _token = Object();

  static PlatformUserAgentPlatform _instance = MethodChannelPlatformUserAgent();

  /// The default instance of [PlatformUserAgentPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlatformUserAgent].
  static PlatformUserAgentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlatformUserAgentPlatform] when
  /// they register themselves.
  static set instance(PlatformUserAgentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
