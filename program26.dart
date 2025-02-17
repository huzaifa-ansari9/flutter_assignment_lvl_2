// Given a year report if it ia a Leap year

import 'dart:io';

void main() {
  output("\t :: Leap Year Finder ::\n");

  output("Enter any year: ");
  int year = int.parse(input());

  isLeapYear(year);
}

// This function check the whether the given number is leap year or not.
void isLeapYear(int year) => (year%4) == 0 ? output("Yes, $year is leap year") : output("No, $year isn't leap year");

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");