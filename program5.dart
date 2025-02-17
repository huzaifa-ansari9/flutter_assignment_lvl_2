// Program 5: write a program that takes a list of numbers and makes new list that has only even numbers of this list in it.

import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> evenNumbers = evenList(numbers);

  stdout.write("List of Even numbers: $evenNumbers");
}

// This function filter out even numbers from list and return list of even numbers
List<int> evenList(List<int> numbers) {
  List<int> evenNumbers = [];

  for(int i = 0; i < numbers.length; i++){
    if((numbers[i] % 2) == 0) {
      evenNumbers.add(numbers[i]);
    }
  }

  return evenNumbers;
}