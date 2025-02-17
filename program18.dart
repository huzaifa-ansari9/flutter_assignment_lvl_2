// Write a program to remove all the whitespace in string in dart

import 'dart:io';

void main() {
  output(" :: Remove Whitespaces :: \n\n");

  output("Enter a string with whitespaces: ");
  String str = input();

  String strWithoutWhitespaces = removeWhitespace(str);
  output("Your string is: $strWithoutWhitespaces");
}

// This function remove the whitespace from given string
String removeWhitespace(String str) => str.split(" ").join("");

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");