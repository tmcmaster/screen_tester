import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

class ScreenTesterOptions {
  late final DeviceInfo? _device;
  late final List<DeviceInfo>? _devices;
  late final String? _image;
  late final String? _styledImage;
  late final double scale;
  late final double opacity;
  late final bool toolbar;
  late final ThemeData? _theme;
  late final ThemeData? _darkTheme;
  final bool safeArea = false;

  ScreenTesterOptions({
    DeviceInfo? device,
    List<DeviceInfo>? devices,
    String? image,
    String? styledImage,
    double? scale,
    double? opacity,
    bool? toolbar,
    ThemeData? theme,
    ThemeData? darkTheme,
  }) {
    _image = image;
    _styledImage = styledImage;
    this.scale = scale ?? 1;
    this.opacity = opacity ?? 0.5;
    this.toolbar = toolbar ?? true;
    _device = device;
    _devices = devices ?? [];
    _theme = theme;
    _darkTheme = darkTheme;
  }

  DeviceInfo get device => _device ?? Devices.ios.iPadiPad;
  List<DeviceInfo> get devices => _devices ?? [];

  String get image {
    if (_image == null) throw AssertionError('Image was not supplied.');
    return _image!;
  }

  ThemeData get theme => _theme ?? ThemeData.light();
  ThemeData get darkTheme => _darkTheme ?? ThemeData.dark();

  bool get useDevicePreview => _device != null;
  bool get usePixelPerfect => _image != null || _styledImage != null;

  bool get devicePreviewOnly => useDevicePreview && !usePixelPerfect;
  bool get pixelPerfectOnly => usePixelPerfect && !useDevicePreview;
  bool get bothDevicePreviewAndPixelPerfect => useDevicePreview && usePixelPerfect;

  String getStyledImagePath(String styleName) {
    if (_styledImage == null) {
      return image;
    } else {
      return sprintf(_styledImage ?? '%s', [styleName]);
    }
  }
}
