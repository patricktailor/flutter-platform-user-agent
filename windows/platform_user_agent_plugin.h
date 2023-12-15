#ifndef FLUTTER_PLUGIN_PLATFORM_USER_AGENT_PLUGIN_H_
#define FLUTTER_PLUGIN_PLATFORM_USER_AGENT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace platform_user_agent {

class PlatformUserAgentPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PlatformUserAgentPlugin();

  virtual ~PlatformUserAgentPlugin();

  // Disallow copy and assign.
  PlatformUserAgentPlugin(const PlatformUserAgentPlugin&) = delete;
  PlatformUserAgentPlugin& operator=(const PlatformUserAgentPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace platform_user_agent

#endif  // FLUTTER_PLUGIN_PLATFORM_USER_AGENT_PLUGIN_H_
