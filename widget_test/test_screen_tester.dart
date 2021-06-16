import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:screen_tester/screen_tester.dart';
import 'package:screen_tester/widgets/screen_tester_options.dart';

import 'widgets/my_screen.dart';
import 'widgets/wrapper_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    WrapperApp(
      child: ScreenTester(
        options: ScreenTesterOptions(
          device: Devices.ios.iPadiPad,
          image: Image.asset('assets/images/todo_app_screen.png', scale: 1.9),
        ),
        child: MyScreen(),
      ),
    ),
  );
}
