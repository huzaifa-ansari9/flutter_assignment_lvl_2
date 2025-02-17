// Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.

import 'dart:io';

void main(){
  output(" :: Searching in a List using 'where' method ::  \n\n");
  
  List<String> friends = [];
  for(int i = 1; i <= 7; i++) {
    output("Enter your $i friend name: ");
    friends.add(input());
  }

  List<String> namesStartWithA = searchingList(friends);
  output("Friends whose name starts with 'A': $namesStartWithA");
}
// This function return a list, which given list filtered out and names start with 'A';
List<String> searchingList(List<String> friends) => friends.where((name) => name.startsWith('A')).toList();

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");