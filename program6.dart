// Program 6: write a program that takes a list of numbers and makes new list that has only odd numbers of this list in it.

import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9,];
  List<int> oddNumbers = oddList(numbers);

  stdout.write("List of Even numbers: $oddNumbers");
}

// This function filter out odd numbers from list and return list of odd numbers
List<int> oddList(List<int> numbers) {
  List<int> oddNumbers = [];

  for(int i = 0; i < numbers.length; i++){
    if((numbers[i] % 2) != 0) {
      oddNumbers.add(numbers[i]);
    }
  }

  return oddNumbers;
}