import 'dart:io';

void main()
{
  print("Welcome to the age of calculators");
print("enter the name");
String name=stdin.readLineSync()!;
print("enter your age");
int age=int.parse(stdin.readLineSync()!);
calculate(name,age);
}

void calculate(String name,int age)
{
 int yrleft=100-age;
 print(name+", you have ${yrleft} years left to be 100 years old");
}