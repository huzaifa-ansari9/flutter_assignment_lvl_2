// Write a dart programs to generate multiplication tables

import 'dart:io';

void main() {
  output("  :: Create m=Multiplication Tables :: \n\n");

  output("Enter the number of which you want to create a table: ");
  int number = int.parse(input());

  generateTable(number);
}

// This function generates the table of given number;
void generateTable(int number) {
  for(int i = 1; i <= 10; i++ ) {
    output("\t $number x $i = ${number*i} \n");
  }
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");