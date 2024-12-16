//WAP that prompts the user to enter 5 numbers, stores them in a List, and displays them in
// increasing order.

import 'dart:io';
import 'dart:core';
void main() {
  List<int> listint = [];
  for(int i=0;i<5;i++) {
    stdout.write("Enter num $i");
    listint.add(int.parse(stdin.readLineSync()!));
  }
  listint.sort();
  print(listint);
}