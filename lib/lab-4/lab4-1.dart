import 'dart:io';
void simpleInterest(int p,int r,int t) {
  double si =  (p*r*t)/100;
 print("simpler interest is : $si");

}
void main() {

  stdout.write("enter principle : ");
  int p= int.parse(stdin.readLineSync()!);
  stdout.write("enter rate of interest ");
  int r= int.parse(stdin.readLineSync()!);
  stdout.write("enter time period");
  int t= int.parse(stdin.readLineSync()!);


  simpleInterest(p, r, t);
}