import 'dart:io';

void main(){
  print("Enter Ferainhite : ");
  int f = int.parse(stdin.readLineSync()!);
  double c = ((f-32)*(5/9));
  print("farenhite to celcius is : $c");
}