import 'dart:io';

void main(){
  print("enter a number : ");
  int a = int.parse(stdin.readLineSync()!);
  print("enter a number : ");
  int b = int.parse(stdin.readLineSync()!);

  print('Addition of two number is ${a+b}');
}