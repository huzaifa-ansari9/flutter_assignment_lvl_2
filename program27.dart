// Find the difference between the square of the sum and the sum of the squares of the first N natural numbers

import 'dart:io';

void main() {
  output("Enter the n numbers: ");
  int n = int.parse(input());

  int difference = differenceN(n);
  output("Difference: $n natural numbers is: $difference");
}

int differenceN(int n) {
  int sum = (n * (n + 1)) ~/ 2;
  int squareOfSum = sum * sum;

  int sumOfSquares = (n * (n + 1) * (2 * n + 1)) ~/ 6;

  return(squareOfSum - sumOfSquares);
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");