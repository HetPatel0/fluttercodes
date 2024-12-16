//WAP that creates List with following value:“Delhi”, “Mumbai”, “Bangalore”, “Hyderabad” and
// “Ahmedabad” Replace “Ahmedabad” with “Surat” in above List.

void main() {
  List<String> cities= ['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad' ,'Ahmedabad'];
  for(int i=0;i<cities.length;i++) {
    if(cities[i]=='Ahmedabad') {
      cities[i]='Surat';
    }
  }
  print(cities);
}