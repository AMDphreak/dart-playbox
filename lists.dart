import 'dart:io';
main() {
  print("Welcome to Geeksforgeeks. Please input your name");
  print("write number");
  stdout.write(">");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("write number");
  stdout.write(">");
  int? n2 = int.parse(stdin.readLineSync()!);
  int sum = n1 + n2;
  print("sum $sum");
  double b = 3.14;
  num c = 4;
  List mylist = new List.filled(4,'');
  mylist[0] = 'north';
  mylist[1] = 'south';
  mylist[2] = 'east';
  mylist[3] = 'west';

  print(mylist);
  print(mylist[0]);
}