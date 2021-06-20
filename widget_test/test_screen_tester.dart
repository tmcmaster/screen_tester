import 'package:device_preview/device_preview.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:screen_tester/screen_tester.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  FlutterWorkbench.runScreenTesterApp(
    title: 'ScreenTester',
    styles: MyStyle.themes,
    options: ScreenTesterOptions(
      device: Devices.ios.iPhone11,
      image: 'assets/images/todo_app_screen.png',
      scale: 0.49,
    ),
    child: MyScreen(),
  );
}
