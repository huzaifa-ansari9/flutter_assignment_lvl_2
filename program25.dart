// • Write a function named generate Random() in dart that randomly returns 100 or null.
// Also, assign a return value of the function to a variable named status that can't be null.
// Give status a default value of O, if generate Random() function returns null.

import 'dart:io';
import 'dart:math';

void main() {
  var status = generateRandom() ?? 0;
  output("The status is: $status");
}

// This function randomly return null or 100
dynamic generateRandom() {
  Random random = Random();
  return random.nextBool() ? 100 : null;
}

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");