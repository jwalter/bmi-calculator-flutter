import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  double _bmi;

  CalculatorBrain({@required int weight, @required int height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'Exercise more';
    } else if (_bmi > 18.5) {
      return 'Good job!';
    } else {
      return 'Eat more.';
    }
  }
}
