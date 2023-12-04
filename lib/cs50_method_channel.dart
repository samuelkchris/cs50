import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'cs50_platform_interface.dart';

/// An implementation of [Cs50Platform] that uses method channels.
class MethodChannelCs50 extends Cs50Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('cs50');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
