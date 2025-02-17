import 'dart:io';

void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 10, 20, 40, 60];
  List<int> list2 = [1, 2, 3, 20, 50, 30, 60, 70, 40];
  
  output(commonList(list1, list2));
}

// This function returns the numbers which is common in both given lists.
List<int> commonList(List<int> l1, List<int> l2){
  Set<int> set1 = l1.toSet();
  Set<int> set2 = l2.toSet();
  Set<int> commonSet = set1.intersection(set2);
  List<int> commonElements = commonSet.toList();
  return commonElements;
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");