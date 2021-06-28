import 'package:device_preview/device_preview.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  FlutterWorkbench.runAppDevicePreview(
    title: 'DevicePreview',
    styles: MyStyle.themes,
    device: Devices.ios.iPhone11,
    child: MyScreen(),
  );
}
