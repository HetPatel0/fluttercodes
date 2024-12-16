import 'dart:io';
void main(){
  print('Enter number of sub 1 : ');
  int s1 = int.parse(stdin.readLineSync()!);
  print('Enter number of sub 2 : ');
  int s2 = int.parse(stdin.readLineSync()!);
  print('Enter number of sub 3 : ');
  int s3 = int.parse(stdin.readLineSync()!);
  print('Enter number of sub 4 : ');
  int s4 = int.parse(stdin.readLineSync()!);
  print('Enter number of sub 5 : ');
  int s5 = int.parse(stdin.readLineSync()!);
  double per = (((s1+s2+s3+s4+s5)*100)/500);
  print('percentage of given sub is : $per');
}