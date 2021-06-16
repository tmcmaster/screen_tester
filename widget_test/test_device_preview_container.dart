import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:screen_tester/widgets/device_preview_container.dart';

import 'widgets/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreviewContainer(
    device: Devices.ios.iPhone11,
    child: MyApp(),
  ));
}
