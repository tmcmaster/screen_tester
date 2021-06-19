import 'package:flutter/material.dart';
import 'package:screen_tester/widgets/pixel_perfect_container.dart';
import 'package:theme_builder/theme_builder_app.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ThemeBuilderApp(
      title: 'PixelPerfectContainer',
      themes: MyStyle.themes,
      child: PixelPerfectContainer(
        image: Image.asset(
          'assets/images/todo_app_screen.png',
          scale: 1.9,
        ),
        child: MyScreen(),
      ),
    ),
  );
}
