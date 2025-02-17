// Write a program to calculate Tip.
// Suppose, you often go to restaurant with friends and you have to split amount of bill. 
// Write a program to calculate split amount of bill.
import 'dart:io';

void main() {
  output("  :: Tip Calculator & Bill Splitter :: \n \n");

  output("Enter no. of people: ");
  int people = int.parse(input());

  output("Enter bill amount: ");
  int bill = int.parse(input());

  output("Enter the percentage of tip(in percentage): ");
  int tip = int.parse(input());

  num calculatedTip = calculateTip(tip, bill);
  num totalBill = totalAmount(calculatedTip, bill);
  num splittedBillPerPerson = splitBill(totalBill, people);

  output("Tip is: $calculatedTip \n");
  output("The total bill is: $totalBill\n");
  output("Bill per person: $splittedBillPerPerson\n");
  output("Thankyouu!!");
}

// This function calculate the total amount
num totalAmount(num tip, int bill) => bill + tip;

// This function calculate the tip
num calculateTip(int tip, int bill) => (bill*tip)/100;

// This function split the bill between people
num splitBill(num bill, int people) => bill/people;

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");