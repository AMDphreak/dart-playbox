/*
Task Manager
 */
import 'dart:io';

main() {
  print("Task Manager.");
  final List taskList = <String>[];
  while (true) {
    print("Menu: \n 1. Add a Task. \n 2. Mark a task as Complete. \n 3. View list. \n 4. Exit.");
    stdout.write("Enter choice>");
    int? choice; while (choice == null) choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      //add a task
        print("Add a task");
        String task = stdin.readLineSync()!;
        taskList.add(task);
        break;
      case 2:
      //mark a task as completed
        if (taskList.isEmpty) print("Task list is empty");
        else {
          print("Enter the number of the task to mark complete.");
          taskList.asMap().forEach((index, value) => print(" ${index+1}. $value"));
          stdout.write("Enter choice>");
          choice = null; while (choice == null || choice <= 0 || choice > taskList.length) choice = int.tryParse(stdin.readLineSync()!);
          taskList.removeAt(choice - 1);
        }
        break;
      case 3:
      //view list
        if (taskList.isEmpty) print ("List is empty");
        else {
          print("The list:");
          taskList.asMap().forEach((index, value) => print(" ${index+1}. $value"));
        }
        break;
      case 4:
      //exit app
        exit(0);
      default:
        print("Invalid choice.");
    }
  }
}