void main() {
  Student san = new Student("diya", 3, "A");
  print("Student Details");
  print("******************");
  san.printstd();
  print("");
  san.printschool();
}

class School {
  String name = "vimal jyothi college";
  String univer = "ktu";
  String place = "kerala";

  void printschool() {
    print("School Name : " + this.name);
    print("University : " + this.univer);
    print("Place : " + this.place);
  }
}

class Student extends School {
  dynamic stdname;
  dynamic stdclass;
  dynamic stddivision;

  Student(String name, int classn, String division) {
    this.stdname = name;
    this.stdclass = classn;
    this.stddivision = division;
  }

  void printstd() {
    print("Name : " + this.stdname);
    print("Class : " + this.stdclass.toString());
    print("Division : " + this.stddivision);
  }
}