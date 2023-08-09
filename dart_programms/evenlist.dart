import 'dart:io';
void main()
{
 print("the given array is");
 List<double> numbers=[10.2,2.34,-6,8,10,3];
 print(numbers);
 List<double> enumber=[];
for(int i=0;i<numbers.length;i++)
{
  if(numbers[i]%2==0)
  {
    enumber.add(numbers[i]);
  }
}
print("the new list containing even numbers are:");
print(enumber);
}