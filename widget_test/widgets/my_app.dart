import 'package:flutter/material.dart';

import 'my_screen.dart';

class MyApp extends StatelessWidget {
  final Widget? child;
  const MyApp({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData.light(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Title'),
          ),
          body: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
            ),
            child: child ?? MyScreen(),
          ),
        ),
      ),
    );
  }
}
