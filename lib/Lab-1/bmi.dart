import 'dart:io';

void main(){
  print("Enter weight in kg : ");
  int p = int.parse(stdin.readLineSync()!);
  print("Enter hight in Meter : ");
  int inch = int.parse(stdin.readLineSync()!);
  double w = (p*0.45359237);
  double h = (inch*0.254);
  double bmi = (w/(h*h));
  print("Your bmi is : $bmi");
}