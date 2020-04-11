import 'dart:math';

class BMICalculatorBrain {
  int height;
  int weight;

  BMICalculatorBrain({this.height, this.weight});

  double _result;

  String calculateBMI() {
    _result = weight / (pow((height / 100), 2));
    return _result.toStringAsFixed(1);
  }

  String getBMI() {
    if (_result >= 25) {
      return 'OVERWEIGHT';
    } else if (_result > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_result >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_result > 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more!';
    }
  }
}
