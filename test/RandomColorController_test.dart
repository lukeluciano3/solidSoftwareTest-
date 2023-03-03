import 'package:flutter_test/flutter_test.dart';
import 'package:heythere/src/controller/random_color_controller.dart';
import 'package:heythere/utils/unum.dart';

void main() {
  group('RandomColorController', () {
    test('Testing contructor', () {
      final randomColorController = RandomColorController();
      expect(randomColorController.backgroundColor, isNotNull);
    });

    test('Testing method changeBackgroundColor()', () {
      final randomColorController = RandomColorController();
      final initialColor = randomColorController.backgroundColor;
      randomColorController.changeBackgroundColor();
      expect(randomColorController.backgroundColor, isNot(equals(initialColor)));
    });

    test('Testing method _getRandomColor()', () {
      final randomColorController = RandomColorController();
      expect(randomColorController.backgroundColor, isNotNull);
      expect(randomColorController.backgroundColor.red, lessThanOrEqualTo(Constants.MAX_RGB_NUMBER));
      expect(randomColorController.backgroundColor.green, lessThanOrEqualTo(Constants.MAX_RGB_NUMBER));
      expect(randomColorController.backgroundColor.blue, lessThanOrEqualTo(Constants.MAX_RGB_NUMBER));
    });
  });
}