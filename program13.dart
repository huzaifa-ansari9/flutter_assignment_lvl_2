// In the game of Hangman, a clue word is given by the program that the player has to guess, letter by letter. The player guesses one letter at a time until the entire word has been guessed. (In the actual game, the player can only guess 6 letters incorrectly before losing).
// 1. Only let the user guess 6 times, and tell the user how many guesses they have left.
// 2. Keep track of the letters user guessed. If the user guesses a letter they had already guessed, don't penalise them - let them guess again.

import 'dart:io';
import 'dart:math';

void main() {
  output("Lets play Hangman Game \n");

  List<String> randomWord = selectRandomWord().split("");
  List<String> guessedWord = [];

  // This loop setup the empty list with '__'
  for(int i = 0; i < randomWord.length; i++) {
      guessedWord.insert(i, '__');
  }

  int remainingAttempts = 6;

  startGame(remainingAttempts, guessedWord, randomWord);
}

// This function starts the Game.
void startGame(int remainingAttempts, List<String> guessedWord, List<String> randomWord) {
  do{
    output("Remaining attempts: $remainingAttempts \n");
    output("Word: $guessedWord \n");
    output("Guess the Letter: ");

    String letter = input();

    guessedWord = checkTheLetter(letter, randomWord, guessedWord);

    if(guessedWord.join("") == randomWord.join("")) {
      output("You Won the game \n");
      output(guessedWord);
      break;
    }
    remainingAttempts--;
    if(remainingAttempts == 0) {
      output("You lose the game. Word: $randomWord");
    }
  } while(remainingAttempts > 0);
}

// This function checks the letter whether it is the selected Word.
checkTheLetter(String letter, List<String> word, List<String> guessedWord) {
  // List<String> guessedWord = [];
  for(int i = 0; i < word.length; i++) {
    if(letter != guessedWord[i] && letter == word[i]) {
        guessedWord.replaceRange(i, i+1, [word[i]]);
    }
  }
  return guessedWord;
}

// This function select a random word
String selectRandomWord() {
  List<String> words = [
    "apple", "banana", "chair", "table", "house", "clock", "tiger", "plane", "river", "stone",]; // This is the list of random words
  String word = words[Random().nextInt(words.length -1)];
  return word;
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");