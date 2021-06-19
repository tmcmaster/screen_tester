import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  FlutterWorkbench.runPixelPerfectApp(
    title: 'PixelPerfect',
    styles: MyStyle.themes,
    image: Image.asset(
      'assets/images/todo_app_screen.png',
      scale: 1.9,
    ),
    child: MyScreen(),
  );
}
