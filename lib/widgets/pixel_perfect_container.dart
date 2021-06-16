import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class PixelPerfectContainer extends StatelessWidget {
  final Image image;
  final Widget child;

  const PixelPerfectContainer({
    Key? key,
    required this.child,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PixelPerfect.extended(
      image: image,
      initBottom: 20, //  default bottom distance (optional)
      offset: Offset(0, 0), // default image offset (optional)
      initOpacity: 0.3, // init opacity value (optional)
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
          ),
          child: SizedBox(
            width: 410,
            height: 1100,
            child: child,
          ),
        ),
      ),
    );
  }
}
