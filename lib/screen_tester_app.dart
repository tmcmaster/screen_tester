library screen_tester;

import 'package:flutter/material.dart';
import 'package:screen_tester/screen_tester.dart';
import 'package:screen_tester/widgets/screen_tester_options.dart';

class ScreenTesterApp extends StatelessWidget {
  late final ScreenTesterOptions? _options;
  final Widget child;

  ScreenTesterApp({
    Key? key,
    options,
    required this.child,
  }) : super(key: key) {
    _options = options;
  }

  ScreenTesterOptions get options => _options ?? ScreenTesterOptions();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
            ),
            child: ScreenTester(
              options: options,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
