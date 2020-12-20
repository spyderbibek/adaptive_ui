import 'package:flutter/material.dart';

class AdaptiveUIUtil {
  static double _width;
  static double _height;
  static Orientation _orientation;
  static DeviceType _deviceType;

  void init(BoxConstraints constraints, Orientation orientation) {
    _orientation = orientation;
    if (orientation == Orientation.portrait) {
      _width = constraints.maxWidth;
      _height = constraints.maxHeight;
    } else {
      _width = constraints.maxHeight;
      _height = constraints.maxWidth;
    }

    if (_width < 600) {
      _deviceType = DeviceType.Mobile;
    } else {
      _deviceType = DeviceType.Tablet;
    }
  }

  static height(var i) {
    return _height * i / 100;
  }

  static width(var i) {
    return _width * i / 100;
  }

  static sp(var i) {
    return _width / 100 * (i / 3);
  }

  static get orientation => _orientation;

  static get deviceType => _deviceType;
}

enum DeviceType {
  Mobile,
  Tablet,
}
