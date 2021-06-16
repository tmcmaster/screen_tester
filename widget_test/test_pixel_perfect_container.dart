import 'package:flutter/material.dart';
import 'package:screen_tester/widgets/pixel_perfect_container.dart';

import 'widgets/my_app.dart';
import 'widgets/my_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(
    child: PixelPerfectContainer(
      image: Image.asset('assets/images/todo_app_screen.png', scale: 1.9),
      child: MyScreen(),
    ),
  ));
}
