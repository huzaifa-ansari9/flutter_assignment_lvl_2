// Write a program using functions that asks tha user for long string containing multiple words. Print back to user the same string,
// except in the words in backward order
import 'dart:io';

void main() {
  output("Enter a long string containing multiple words. \n");
  output("Enter the String: ");
  String str = input();

  output("\nThe reversed string is: ${backwardString(str)}");
}

// This functions reversed the given string.
String backwardString(String str) => str.split(" ").reversed.join(" ");

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");