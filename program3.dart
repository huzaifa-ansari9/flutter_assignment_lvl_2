// Program 3: Create a program that asks the user for a number and then printout the list of all the divisors

import 'dart:io';

void main() {
  output("Enter a Number: ");
  int num = int.parse(input());

  List<int> divisors = checkDivisors(num);

  output("Divisors of $num is $divisors");
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");

// This function return the list of divisors of the given number
List<int> checkDivisors(number) {
  List<int> divisors = [];

  for(int i = 1; i <= number~/2; i++){
    if((number % i) == 0) {
      divisors.add(i);
    }
  }
  return divisors;
}
