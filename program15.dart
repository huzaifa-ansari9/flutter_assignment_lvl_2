// Write a program to find BMI

import 'dart:io';
import 'dart:math';

void main() {
  output("  :: BMI Calculator :: \n \n");
  
  output("Enter your weight(in kg): ");
  num weight = num.parse(input());
  
  output("Enter your height(in meters): ");
  num height = num.parse(input());

  num bmi = calculateBMI(weight, height);

  checkBMI(num.parse(bmi.toStringAsFixed(2)));
}

// This function calculate the BMI and return it.
num calculateBMI(num weight, num height) => weight/(height*height);

// This function check BMI and give the report on the basis of BMI
void checkBMI(num bmi) {
  if(bmi < 19){
    output("You are under weight. BMI: $bmi");
  } else if(bmi < 25) {
    output("You are normal weight. BMI: $bmi");
  } else if (bmi < 30) {
    output("You are over weight. BMI: $bmi");
  } else {
    output("You are soo over weight. BMI: $bmi");
  }
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");