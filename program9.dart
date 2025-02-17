// Write a program(function) that takes a list and return a new list that contains all the elements of first list minus all duplicates

import 'dart:io';

void main() {
  List<int> numbers = [1, 1, 2, 2, 3, 3, 4, 5, 6, 7, 7, 90, 90];
  stdout.write("The new list(without duplicates) is: ${removeDuplicates(numbers)}");
}

// This function removes the duplicates elements from list and returns a new list
List<int> removeDuplicates(List<int> list) => list.toSet().toList();