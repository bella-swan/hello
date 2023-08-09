
import 'dart:io';

void main()
{
  int y;
  print("enter the number of elements in the list");
  y=int.parse(stdin.readLineSync()!);
  print("enter the list elements");
  List<int> numbers=[];
  for(int k=0;k<y;k++)
  {
   numbers.add(int.parse(stdin.readLineSync()!));
    
  }
  print(numbers);
  showlist(numbers);
}

  void showlist(List<int> num )
  {
     int x=num[0];
  int y=num[num.length-1];
  List<int> nwlist=[x,y];
  print(nwlist);

  }


  