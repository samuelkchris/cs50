//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <cs50/cs50_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) cs50_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Cs50Plugin");
  cs50_plugin_register_with_registrar(cs50_registrar);
}
