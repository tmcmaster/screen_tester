import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class ScreenTesterOptions {
  late final DeviceInfo? _device;
  late final Image? _image;
  late final ThemeData? _theme;
  late final ThemeData? _darkTheme;
  final bool safeArea = false;

  ScreenTesterOptions({
    DeviceInfo? device,
    Image? image,
    ThemeData? theme,
    ThemeData? darkTheme,
  }) {
    _device = device;
    _image = image;
    _theme = theme;
    _darkTheme = darkTheme;
  }

  DeviceInfo get device => _device ?? Devices.ios.iPadiPad;
  Image get image {
    if (_image == null) throw AssertionError('Image was not supplied.');
    return _image!;
  }

  ThemeData get theme => _theme ?? ThemeData.light();
  ThemeData get darkTheme => _darkTheme ?? ThemeData.dark();

  bool get useDevicePreview => _device != null;
  bool get usePixelPerfect => _image != null;

  bool get devicePreviewOnly => useDevicePreview && !usePixelPerfect;
  bool get pixelPerfectOnly => usePixelPerfect && !useDevicePreview;
  bool get bothDevicePreviewAndPixelPerfect => useDevicePreview && usePixelPerfect;
}
