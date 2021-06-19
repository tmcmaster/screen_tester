import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:screen_tester/widgets/device_preview_container.dart';
import 'package:theme_builder/theme_builder_app.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ThemeBuilderApp(
      title: 'DevicePreviewContainer',
      themes: MyStyle.themes,
      child: DevicePreviewContainer(
        device: Devices.ios.iPhone11,
        child: MyScreen(),
      ),
    ),
  );
}
