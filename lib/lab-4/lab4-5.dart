//WAP to count number of even or odd number from an array of n numbers
import 'dart:io';

void count(List<int> n) {
  int even=0;
  int odd=0;
  for(int i=0;i<n.length;i++)
  {
    if(n[i]%2==0) {
      even++;
    }
    else
      {
        odd++;
      }
  }
  print("No of odd number is $odd");
  print("No of even  number is $even");


}
void main() {
  List<int> listint = [];
  for(int i=0;i<5;i++) {
    stdout.write("Enter num $is");
    listint.add(int.parse(stdin.readLineSync()!));
  }
  count(listint);


}

