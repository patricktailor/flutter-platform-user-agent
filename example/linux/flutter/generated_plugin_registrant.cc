//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <platform_user_agent/platform_user_agent_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) platform_user_agent_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PlatformUserAgentPlugin");
  platform_user_agent_plugin_register_with_registrar(platform_user_agent_registrar);
}
