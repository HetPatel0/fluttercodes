// WAP to check whether the given number is positive or negative

import 'dart:io';

void main(){
  print("enter a number : ");
  int n = int.parse(stdin.readLineSync()!);
  if(n >= 0){
    print('Number is positive');
  }
  else{
    print('Number is negative');
  }

}