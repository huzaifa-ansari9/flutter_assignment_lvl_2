// • Write a program that prints the numbers from 1 to 100 and for multiples of '3' print "Fizz"
// instead of the number and for the multiples of '5 'print "Buzz",
// and for multiples of both '3' and '5' print Fizz-Buzz.
import 'dart:io';

void main() {

  for(int i = 1; i <= 100; i++) {
    if((i%3) == 0 && (i%5) == 0) {
      output("Fizz-Buzz\n");
    } else if((i%3) == 0) {
      output("Fizz\n");
    } else if((i%5) == 0) {
      output("Buzz\n");
    } else {
      output("$i\n");
    }
  }
}

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");