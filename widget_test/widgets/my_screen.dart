import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World! ',
          textAlign: TextAlign.center,
          style: theme.textTheme.headline3!.copyWith(color: theme.primaryColor),
        ),
      ),
    );
  }
}
