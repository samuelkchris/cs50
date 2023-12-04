# CS50 Flutter Plugin

This Flutter plugin is designed to interact with the CS50 device. It provides a set of APIs that allow Flutter applications to communicate with the device and perform various operations.

## Features

The plugin provides the following features:

- **Device Information**: Retrieve device information such as OS version and device ID.
- **Generic APIs**: Perform system-level operations such as logging and system updates.
- **IC Card / SAM Card**: Interact with IC cards and SAM cards.
- **Printer**: Control the device's printer to print text, barcodes, and QR codes.
- **App White List**: Manage the app install white list and app uninstall black list.
- **Fiscal Module**: Interact with the device's fiscal module.
- **Beep**: Control the device's beep sound.
- **Magnetic Card**: Interact with magnetic cards.
- **Contactless Cards**: Interact with contactless cards. This includes the `PiccOpen` method to power on the non-contact card module.
- **Transaction Kernel APIs**: Perform transactions using various kernels such as Paypass, Paywave, EMVCO, Express, and PCI.

## Usage

To use this plugin in your Flutter app, add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  cs50_flutter_plugin:
    path: ../cs50_flutter_plugin
```

Then, import the plugin in your Dart code:

```dart
import 'package:cs50_flutter_plugin/cs50_flutter_plugin.dart';
```

You can now call the plugin's methods in your code. For example, to power on the non-contact card module, you can use the `PiccOpen` method:

```dart
void powerOnCardModule() async {
  const platform = const MethodChannel('com.ctk.sdk');
  try {
    final int result = await platform.invokeMethod('PiccOpen');
    print(result);
  } on PlatformException catch (e) {
    print("Failed to power on card module: '${e.message}'.");
  }
}
```

Please refer to the plugin's API documentation for more information on how to use each method.

## Contributing

Contributions are welcome! Please read our contributing guidelines before submitting a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.