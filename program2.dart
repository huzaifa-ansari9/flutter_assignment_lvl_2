// Task 2 : Make a two player rock-paper-scissor game against the Computer

import 'dart:io';
import 'dart:math';

void main() {
  output("    :: Rock - Paper - Scissor ::   \n");
  output("1. Rock \n");
  output("2. Paper \n");
  output("3. Scissor \n");
  output("\nYou have the given option write the number of that option for choosing the option \n");
  output("Player 1 - Chose the option: ");
  dynamic player1 = int.parse(input());

  // This function check the value enter by user is acceptable or not
  player1 = optionCheck(player1);

  // Assigning computer value
  dynamic computer = Random().nextInt(3);



  if(computer == 1 && player1 == 1) {
    output("DRAW: No one win the match \n");
  } else if(computer == 2 && player1 == 2){
    output("DRAW: No one win the match \n");
  } else if(computer == 3 && player1 == 3) {
    output("DRAW: No one win the match \n");
  } else if(computer == 1 && player1 == 2) {
    output("Win: Player won the match! \n");
  } else if(computer == 1 && player1 == 3) {
    output("Win: Computer won the match! \n");
  } else if(computer == 2 && player1 == 1) {
    output("Win: Computer won the match! \n");
  } else if(computer == 2 && player1 == 3) {
    output("Win: Player won the match! \n");
  } else if(computer == 3 && player1 == 1) {
    output("Win: Player won the match! \n");
  } else if(computer == 3 && player1 == 2) {
    output("Win: Computer won the match! \n");
  }

  if(player1 == 1) player1 = '1. Rock';
  if(player1 == 2) player1 = '2. Paper';
  if(player1 == 3) player1 = '3. Scissor';

  if(computer == 1) computer = '1. Rock';
  if(computer == 2) computer = '2. Paper';
  if(computer == 3) computer = '3. Scissor';

  output("COMPUTER: $computer \n");
  output("PLAYER: $player1 \n");
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");


// This function check the value enter by user is acceptable or not
int optionCheck(player1) {
  while(player1 < 1 || player1 > 3){
    output("ERROR: You have enter wong choice, \n");
    output("Player 1 - Chose the option: ");
    player1 = int.parse(input());
  }
  return player1;
}