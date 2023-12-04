import 'package:flutter_test/flutter_test.dart';
import 'package:cs50/cs50.dart';
import 'package:cs50/cs50_platform_interface.dart';
import 'package:cs50/cs50_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCs50Platform
    with MockPlatformInterfaceMixin
    implements Cs50Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Cs50Platform initialPlatform = Cs50Platform.instance;

  test('$MethodChannelCs50 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCs50>());
  });

  test('getPlatformVersion', () async {
    Cs50 cs50Plugin = Cs50();
    MockCs50Platform fakePlatform = MockCs50Platform();
    Cs50Platform.instance = fakePlatform;

    expect(await cs50Plugin.getPlatformVersion(), '42');
  });
}
