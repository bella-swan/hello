import 'dart:io';
void main()
{
 List<int> numbers=[2,14,22,6,9,1]; 
 print("the given list is ${numbers}");
 List<int> numless=[];
 for(int i in numbers)
 {
  if(i<5)
  {
    numless.add(i);
  }
 }
 print("the numbers less than 5 in the list are ${numless}");

 }
