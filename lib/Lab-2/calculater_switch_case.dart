
import 'dart:io';

void main() {
  print("enter a number 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print('enter which operator you want to use :- ');
  String s = stdin.readLineSync()!;
  print("enter a number 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  switch (s) {
    case '+' :
      print('Addition of $n1 and $n2 is ${n1 + n2}');
      break;
    case '-' :
      print('Subtraction of $n1 and $n2 is ${n1 - n2}');
      break;
    case '*' :
      print('Multiplication of $n1 and $n2 is ${n1 * n2}');
      break;
    case '/' :
      print('Divition of $n1 and $n2 is ${n1 / n2}');
      break;
  }
}