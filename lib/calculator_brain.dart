import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final num height;
  final int weight;
  double _bmi=0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if(_bmi >=18){
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getRecom() {
    if (_bmi >= 25) {
      return 'eat more';
    } else if(_bmi >=18){
      return 'Normal';
    } else {
      return 'You need to eat more';
    }
  }
}
