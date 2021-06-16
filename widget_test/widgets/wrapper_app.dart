import 'package:flutter/material.dart';

class WrapperApp extends StatelessWidget {
  final Widget child;
  const WrapperApp({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: child,
          ),
        ),
      ),
    );
  }
}
