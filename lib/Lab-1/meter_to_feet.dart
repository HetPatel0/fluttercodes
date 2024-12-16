import 'dart:io';

void main(){
  print("Enter Number in Meter : ");
  int m = int.parse(stdin.readLineSync()!);
  double f = (m*3.28);
  print("Meter to feet is : $f");
}