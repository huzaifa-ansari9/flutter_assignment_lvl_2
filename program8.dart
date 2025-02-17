// Write a program that takes list and return the new list with first and last element of given list

import 'dart:io';

void main() {
  List<int> listNum = [5, 10, 15, 20, 30, 40, 50];

  stdout.write("The new list is: ${firstAndLastElem(listNum)}");
}

// This function makes a new list containing first and last element of the given list
List<int> firstAndLastElem(List<int> listNum) {
  List<int> newList = [];
  newList.add(listNum.first);
  newList.add(listNum.last);
  return newList;
}