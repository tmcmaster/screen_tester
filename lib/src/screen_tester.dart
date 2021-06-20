import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_builder/theme_builder.dart';

import 'device_preview_container.dart';
import 'pixel_perfect_container.dart';
import 'screen_tester_options.dart';

class ScreenTester extends ConsumerWidget {
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
  Widget build(BuildContext context, ScopedReader watch) {
    final styleName = watch(ThemeBuilderProviders.selectedStyleName).state;
    final imagePath = (_options!.devicePreviewOnly ? null : _options!.getStyledImagePath(styleName.text));
    return _buildScreenTesterContainer(imagePath);
  }

  Widget _buildScreenTesterContainer(String? imagePath) {
    return (options.devicePreviewOnly
        ? _buildDevicePreviewContainer(child)
        : (options.pixelPerfectOnly
            ? _buildPixelPerfectContainer(child, imagePath)
            : _buildDevicePreviewContainer(_buildPixelPerfectContainer(child, imagePath))));
  }

  Widget _buildPixelPerfectContainer(child, imagePath) {
    return PixelPerfectContainer(
      image: imagePath,
      scale: options.scale,
      opacity: options.opacity,
      child: child,
    );
  }

  Widget _buildDevicePreviewContainer(child) {
    return DevicePreviewContainer(
      device: options.device,
      child: (options.safeArea ? SafeArea(child: child) : child),
    );
  }
}
