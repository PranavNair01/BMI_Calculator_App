import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double _BMI;

  CalculatorBrain({this.height, this.weight});

  String BMICalculator(){
    _BMI = weight / pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI >=25.0)
      return 'Overweight';
    else if(_BMI>=18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation(){
    if(_BMI >=25.0)
      return 'You have more than normal body weight. You can exercise more!!!';
    else if(_BMI>=18.5)
      return 'You have normal body weight. Good Job!!!';
    else
      return 'You have less than normal body weight. You can eat more!!!';
  }
}