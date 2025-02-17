// Create a program that will play the "cows and bulls" game with the user. The game works like this:
// 1. Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every digit the user guessed correctly in the correct place, they have a "cow". For every digit the user guessed correctly in the wrong place is a "bull."
// 2. Every time the user makes a guess, tell them how many "cows" and "bulls" they have. Once the user guesses the correct number, the game is over. Keep track of the number of guesses the user makes throughout the game and tell the user at the end.

import 'dart:io';
import 'dart:math';

void main() {
  output("Computer guess a 4-digit number you have to guess the Number\n");

  // This generated the random number
  List<String> randomNumber = generateRandomNum();

  // This is guess variable. I save the number in the form of list for checking each digit
  List<String> guess = [];

  // This variable checks the no of guesses
  int noOfGuesses = 0;

  // This do-while loop repeat the game
  do{
    guess = takeUserInput();
    checkGuess(randomNumber, guess);

    noOfGuesses++;
    if(int.parse(guess.join("")) == int.parse(randomNumber.join(""))) {
      output("You guess the number! - Number is $randomNumber \n");
      output("Your no. of guesses is:  $noOfGuesses");
      break;
    }
  }while(true);

}

// This function check the number and print cow or bull after checking at each index.
void checkGuess(List<String> randomNum, List<String> guess) {
  for(int i = 0; i < guess.length; i++){
    if(randomNum[i] == guess[i]) {
      output("Cow \n");
    } else if(randomNum.contains(guess[i])){
      output("Bull \n");
    } else {
      output("Try another number. \n");
    }

  }
}

// This function generates the random 4 digit number;
List<String> generateRandomNum() {
  Random random = Random();
  String randomNumber = (1000 + random.nextInt(9000)).toString();
  return randomNumber.split("");
}

// This functions takes the input of user for guesses
List<String> takeUserInput() {
  output("Guess the number: ");
  String guess = input();
  return guess.toString().split("");
}

// This function print the given value
void output(value) => stdout.write(value);

// This function takes user input and return as string
String input() => stdin.readLineSync()!;

