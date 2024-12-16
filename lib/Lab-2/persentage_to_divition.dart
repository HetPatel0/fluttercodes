import 'dart:io';
void main(){
  int sum = 0;
  for(int i=1 ; i <= 5 ; i++){
    print('Enter number of sub $i : ');
    int temp = int.parse(stdin.readLineSync()!);
    sum += temp;
  }

  double per = (((sum)*100)/500);
  print('persentage of given sub is : $per');

  if(per > 70){
    print('Distiction');
  }
  else if(per <= 70 && per >60){
    print('First Class');
  }
  else if(per <= 60 && per >45){
    print('Second Class');
  }
  else if(per <= 45 && per >35){
    print('Pass Class');
  }
}