// Create a Map with name, phone keys and store some values to it. Use where to find all keys that have length of 4

import 'dart:io';

void main() {
  output("Find the Keys from map which have length of 4 \n\n");

  // This is the example Map
  Map<String, dynamic> user = {
    "name": "Alias",
    "phone": 9825032183
  };
  
  List<String> keysLengthOf4 = keyFinder(user);
  output("Keys with length of 4: $keysLengthOf4");
}

// This function return the key which have length of 4
List<String> keyFinder(Map<String, dynamic> user) => user.keys.where((key) => key.length == 4).toList();

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");