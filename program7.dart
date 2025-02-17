// Generate a random number between 1 and 100. Ask the user to guess the number whether it is too low, too high, close exact
import 'dart:io';
import 'dart:math';

void main() {
  output("Lets play a game! \n");
  output("Guess the number between 1 and 100 \n");

  int guess = 0;
  int num = Random().nextInt(100);

  guessTheNum(num, guess);
}

// Function check the guesses
void guessTheNum(int num, int guess) {
  for(int i = 0; i <= 9; i++) {
    output("Guess the number: ");
    guess = int.parse(input());
    if(guess > num) {
      output("Too high! \n");
    } else if(guess < num) {
      output("Too low! \n");
    } else {
      output("Yeah!! You won the game. The Number is $num");
      break;
    }
    output("You lose the Game");
  }
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");