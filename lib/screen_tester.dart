library screen_tester;

import 'package:flutter/material.dart';
import 'package:screen_tester/widgets/device_preview_container.dart';
import 'package:screen_tester/widgets/pixel_perfect_container.dart';
import 'package:screen_tester/widgets/screen_tester_options.dart';

class ScreenTester extends StatelessWidget {
  late final ScreenTesterOptions? _options;
  final Widget child;

  ScreenTester({
    Key? key,
    options,
    required this.child,
  }) : super(key: key) {
    _options = options;
  }

  ScreenTesterOptions get options => _options ?? ScreenTesterOptions();

  @override
  Widget build(BuildContext context) {
    return _buildScreenTesterContainer();
  }

  Widget _buildScreenTesterContainer() {
    return (options.devicePreviewOnly
        ? _buildDevicePreviewContainer(child)
        : (options.pixelPerfectOnly
            ? _buildPixelPerfectContainer(child)
            : _buildDevicePreviewContainer(_buildPixelPerfectContainer(child))));
  }

  Widget _buildPixelPerfectContainer(child) {
    return PixelPerfectContainer(
      image: options.image,
      child: child,
    );
  }

  Widget _buildDevicePreviewContainer(child) {
    return DevicePreviewContainer(
      device: options.device,
      child: child,
    );
  }
}
