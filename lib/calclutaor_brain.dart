

import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    String result;
    _bmi >= 25 ? result = 'Overweight' : _bmi > 18.5 ? result = 'normal'
    : result = 'underweight';
    return result;
  }

  String getFeedback(){
    String result;
    _bmi >= 25 ? result = 'You have a higher than normal body weight. Try exercising more.'
        : _bmi > 18.5 ? result = 'You have a normal body weight. Good Job!'
        : result = 'You have a lower than normal body weight. You should eat more.';
    return result;
  }

}