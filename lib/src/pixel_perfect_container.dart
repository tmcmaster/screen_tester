import 'package:flutter/material.dart';

import 'pixel_perfect/pixel_perfect.dart';

class PixelPerfectContainer extends StatelessWidget {
  final String image;
  final double scale;
  final Widget child;

  const PixelPerfectContainer({
    Key? key,
    required this.image,
    required this.scale,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /*Expanded(
        child: Container(color: Colors.red),
      ),*/
        Expanded(
          child: PixelPerfect(
            assetPath: image,
            scale: 1 / scale,
            initBottom: 20, //  default bottom distance (optional)
            offset: Offset(0, 0), // default image offset (optional)
            initOpacity: 1, // init opacity value (optional)
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                  ),
                ),
                child: OverflowBox(
                  child: child,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
