// Write a program to check whether is a given character is vowels or consonants.

import 'dart:io';

void main() {
  output("  :: Vowels & Consonants Checker :: \n \n");

  output("Enter a Character: ");
  String char = input().toUpperCase();

  vowelsAndConsonantChecker(char);
}

// This function checks the given character is a vowel or consonant
void vowelsAndConsonantChecker(String char) {
  List<String> vowels = ["A", "E", "I", "O", "U"];
  List<String> consonants = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'];

  if (vowels.contains(char)) {
    output("This character '$char' is a Vowel");
  } else if (consonants.contains(char)) {
    output("This character '$char' is a Consonant");
  } else {
    output("Invalid input! Please enter an alphabet character.");
  }
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");