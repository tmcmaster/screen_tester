import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:screen_tester/screen_tester.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  FlutterWorkbench.runScreenTesterApp(
    title: 'ScreenTester',
    styles: MyStyle.themes,
    options: ScreenTesterOptions(
      device: Devices.ios.iPadiPad,
      image: Image.asset(
        'assets/images/todo_app_screen.png',
        scale: 1.9,
      ),
    ),
    child: MyScreen(),
  );
}
