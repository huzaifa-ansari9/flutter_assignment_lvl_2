// Write a program to find the square of a number using user input

import 'dart:io';

void main() {
  output("    :: Square Finder :: \n \n");

  output("Enter your number: ");
  int num = int.parse(input());

  int numSquare = toSquare(num);
  output("The square of $num is $numSquare");

}

// This function return the square of given number.
int toSquare(int num) => num*num;

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");