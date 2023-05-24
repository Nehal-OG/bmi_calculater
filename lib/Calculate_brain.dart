import 'dart:math';

class CalculayeBrain {
  CalculayeBrain(this.height, this.weight);

  late final height;
  late final weight;
  late double _bmi;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String GetInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight Congrats";
    } else {
      return "You have a lower than normal body weight. Try to eat more.";
    }
  }
}
