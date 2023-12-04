#include "include/cs50/cs50_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "cs50_plugin.h"

void Cs50PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  cs50::Cs50Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
