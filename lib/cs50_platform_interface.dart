import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'cs50_method_channel.dart';

abstract class Cs50Platform extends PlatformInterface {
  /// Constructs a Cs50Platform.
  Cs50Platform() : super(token: _token);

  static final Object _token = Object();

  static Cs50Platform _instance = MethodChannelCs50();

  /// The default instance of [Cs50Platform] to use.
  ///
  /// Defaults to [MethodChannelCs50].
  static Cs50Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Cs50Platform] when
  /// they register themselves.
  static set instance(Cs50Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
