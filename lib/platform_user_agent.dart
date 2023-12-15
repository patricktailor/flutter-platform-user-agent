
import 'platform_user_agent_platform_interface.dart';

class PlatformUserAgent {
  Future<String?> getPlatformVersion() {
    return PlatformUserAgentPlatform.instance.getPlatformVersion();
  }
}
