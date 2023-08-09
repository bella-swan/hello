import 'dart:io';
void main()
{
 print("enter the number");
 try{
var num=int.parse(stdin.readLineSync()!);
List<int> divisor=[];
if(num>0)
{
for(int i=1;i<num;i++)
{
  if(num%i==0)
  {
    divisor.add(i);
  }
}
print(divisor);
}
else
{
      print('Invalid input. Please enter a positive integer.');
      return;
}
 }

on FormatException{
print("invalid number");
}
}