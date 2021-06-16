import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class ScreenTesterOptions {
  late final DeviceInfo? _device;
  late final Image? _image;
  ScreenTesterOptions({
    DeviceInfo? device,
    Image? image,
  }) {
    _device = device;
    _image = image;
  }

  DeviceInfo get device => _device ?? Devices.ios.iPadiPad;
  Image get image {
    if (_image == null) throw AssertionError('Image was not supplied.');
    return _image!;
  }

  bool get useDevicePreview => _device != null;
  bool get usePixelPerfect => _image != null;

  bool get devicePreviewOnly => _device != null && _image == null;
  bool get pixelPerfectOnly => _device == null && _image != null;
  bool get bothDevicePreviewAndPixelPerfect => _device != null && _image != null;
}
