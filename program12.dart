// You, the user, will have in your head a number between 0 and 100. The program will guess a number, and you, the user,
// will say whether it is too high, too low, or your number.

import 'dart:io';
import 'dart:math';

void main() {
  output("NOTE:  In this game, you have to chose a number in your mind and computer will guess it. \n");
  output("If the number is high you have to tell computer 'too high', 'too low', 'correct' \n");
  output("Enter the correct String \n");

  output("Computer: Think a number in your mind between 0 - 100 I will Guess it. \n\n");

  int num = generateTheNum();
  int times = 10;
  int attempts = 0;

  // This is the main function for checking the number;
  checkTheNum(times, num, attempts);
}

void checkTheNum(int times, int num, int attempts) {
  do{
    // This display the computer guessed number
    output("Computer: $num \n");

    output("It is 'too high' or 'too low' or 'correct': ");
    String status = input().toLowerCase();

    // This check is for if the user entered is correct or not;
    if(status == "too high" || status == "too low" || status == "correct") {
      if(status == "too high") {
        num = num-times;
        times--;
      } else if(status == "too low") {
        num = num+times;
        times--;
      } else {
        output("Computer: I guess the number in $attempts attempts.");
        break;
      }
    } else {
      output("Please enter perfect value");
    }
    attempts++;
  }while(true);
}

int generateTheNum() {
  int num = Random().nextInt(100);
  return num;
}

// This function displays the given value;
void output(value) => stdout.write(value);

// This functions takes the input from user;
String input() => stdin.readLineSync()!;