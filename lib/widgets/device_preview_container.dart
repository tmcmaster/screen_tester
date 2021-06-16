import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DevicePreviewContainer extends StatelessWidget {
  final DeviceInfo device;
  final Widget child;

  const DevicePreviewContainer({
    Key? key,
    required this.device,
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
          child: DevicePreview(
            isToolbarVisible: true,
            //devices: [Devices.ios.iPhone11],
            defaultDevice: device,
            enabled: true,
            plugins: [
              const ScreenshotPlugin(),
              const FileExplorerPlugin(),
              const SharedPreferencesExplorerPlugin(),
            ],
            builder: (context) => child,
          ),
        ),
      ],
    );
  }
}
