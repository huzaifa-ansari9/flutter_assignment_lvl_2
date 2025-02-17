// Write a program to print square root of a number using user input

import 'dart:io';
import 'dart:math';

void main() {
  output("  :: Square Root Finder :: \n \n");

  output("Enter your number: ");
  int number = int.parse(input());

  num sqrt = toSquareRoot(number);
  output("The square root of $number is $sqrt");
}

// This function returns the square root of given number.
num toSquareRoot(int number) => num.parse(sqrt(number).toStringAsFixed(2));

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");