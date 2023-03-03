import 'dart:math';

import 'package:flutter/material.dart';

import 'package:heythere/utils/unum.dart';

///A controller class that generates random colors
///and provides an interface for changing the background color.
class RandomColorController {
  Color _backgroundColor = const Color(Constants.COLOR_WHITE);

  ///Return [_backgroundColor] with a random color
  Color get backgroundColor => _backgroundColor;

  ///Constructor when called generate a random color
  RandomColorController() {
    _getRandomColor();
  }

  ///Set a new random color to the [_backgroundColor]
  void changeBackgroundColor() {
    _getRandomColor();
  }

  void _getRandomColor() {
    final random = Random();
    final red = random.nextInt(Constants.MAX_RGB_NUMBER);
    final green = random.nextInt(Constants.MAX_RGB_NUMBER);
    final blue = random.nextInt(Constants.MAX_RGB_NUMBER);

    _backgroundColor = Color.fromARGB(red, green, blue, 1);
  }
}
