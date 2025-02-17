// Write a dart program to find simple interest.

import 'dart:io';

void main() {
  output("This program finds the simple interest \n\n");

  // Take invested or borrowed amount
  output("Enter your invested amount: ");
  num investedAmount = num.parse(input());

  // Take input of rate of interest(per annum, in percentage)
  output("Enter your rate of interest(per annum, in percentage): ");
  num rateOfInterest = num.parse(input());

  // Take input of time(in years)
  output("Enter your time(in years): ");
  num time = num.parse(input());

  //FORMULA:  Interest = (P * R * T) / 100
  num interest = calculateInterest(investedAmount, rateOfInterest, time);
  output("Your simple interest is $interest");
}

// This function calculate the interest and return it.
num calculateInterest(num investedAmount, num rateOfInterest, num time) => (investedAmount*rateOfInterest*time)/100;

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");