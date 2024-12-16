// WAP to check whether the given number is positive or negative

import 'dart:io';

void main(){
  print("enter a number 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print('enter which operator you want to use :- ');
  String op = stdin.readLineSync()!;
  print("enter a number 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  if(op == '+'){
    print('Addition of $n1 and $n2 is ${n1+n2}');
  }
  if(op == '-'){
    print('Subtraction of $n1 and $n2 is ${n1-n2}');
  }
  if(op == '*'){
    print('Multiplication of $n1 and $n2 is ${n1*n2}');
  }
  if(op == '/'){
    print('Divition of $n1 and $n2 is ${n1/n2}');
  }
}