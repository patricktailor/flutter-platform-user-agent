#include "include/platform_user_agent/platform_user_agent_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "platform_user_agent_plugin.h"

void PlatformUserAgentPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  platform_user_agent::PlatformUserAgentPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
