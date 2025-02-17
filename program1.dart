// Create a program that asks the user to enter their name and their age. Print out the message that tell how many year they have to be 100 year

import 'dart:io';

void main(){
  stdout.write("Enter your name: ");
  String name = input();

  stdout.write("Enter your Age: ");
  int age = int.parse(input());

  int yearsRemaining = 100 - age;
  print("$name, You have $yearsRemaining years remaining to become 100 years old!");
}

String input() => stdin.readLineSync()!;