import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:screen_tester/screen_tester.dart';
import 'package:screen_tester/widgets/screen_tester_options.dart';
import 'package:theme_builder/theme_builder_app.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ThemeBuilderApp(
      title: 'WidgetTester',
      themes: MyStyle.themes,
      child: ScreenTester(
        options: ScreenTesterOptions(
          device: Devices.ios.iPadiPad,
          image: Image.asset(
            'assets/images/todo_app_screen.png',
            scale: 1.9,
          ),
        ),
        child: MyScreen(),
      ),
    ),
  );
}
