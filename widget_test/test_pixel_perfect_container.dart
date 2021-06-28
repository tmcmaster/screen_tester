import 'package:flutter_workbench/flutter_workbench.dart';

import 'widgets/my_screen.dart';
import 'widgets/my_style.dart';

void main() {
  FlutterWorkbench.runAppPixelPerfect(
    title: 'PixelPerfect',
    styles: MyStyle.themes,
    image: 'assets/images/todo_app_screen.png',
    scale: 0.42,
    opacity: 0.1,
    child: MyScreen(),
  );
}
