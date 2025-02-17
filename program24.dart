// Create a simple to-do application that allows user to add, remove, and view their task

import 'dart:io';

void main() {
  output("  :: Todo List ::\n");
  List<String> tasks = [];

  todo(tasks);
}
// It is todo list
void todo(List<String> tasks) {
  while(true) {
    output("\n1. Add Task \n");
    output("2. Remove Task \n");
    output("3. View Tasks \n");
    output("4. Exit \n");

    output("Chose the option: ");
    int option = int.parse(input());

    if(option == 1) {
      output("Enter the Task: ");
      String task = input();

      if(task.isNotEmpty){
        tasks.add(task);
        output("Task Added Successfully \n");
      } else {
        output("Task cannot be empty. \n");
      }
    } else if(option == 2) {
      output("Current tasks: \n");
      for(int i = 0; i < tasks.length; i++) {
        output("\t $i. ${tasks[i]}\n");
      }

      output("Enter the index of task to remove: ");
      int index = int.parse(input());

      if(index.isNaN) output("Enter a proper value");

      tasks.removeAt(index);
      output("Task removed successfully\n");
    } else if(option == 3) {
      output("Your Tasks: \n");
      for(int i = 0; i < tasks.length; i++) {
        output("\t $i. ${tasks[i]}\n");
      }
    } else if(option == 4) {
      output("Good bye");
      break;
    } else {
      output("Enter correct Value.\n");
    }
  }
}

// This function return user input in the form of String
String input() => stdin.readLineSync()!;

// This function prints the given arguments and make the line drop
void output(value) => stdout.write("$value");