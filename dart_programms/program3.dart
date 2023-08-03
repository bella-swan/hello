class Animals{
   void eat(){
      print("I  can eat");
   }
   void sleep()
   {
    print("i can sleep");
   }
}

// inherting the parent class i.e Human
class Dog extends Animals{
   void bark(){
      print("I can bark");
   }
}

void main(){
   Dog p = new Dog();
   p.eat();
   p.sleep();
   p.bark(); // invoking the parent class method
}