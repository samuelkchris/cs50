
import 'cs50_platform_interface.dart';

class Cs50 {
  Future<String?> getPlatformVersion() {
    return Cs50Platform.instance.getPlatformVersion();
  }
}
