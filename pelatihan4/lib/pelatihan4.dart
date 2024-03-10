class Person {
  String name = 'John Doe';
  int age = 24;
  String? address;

  void sayHai(String name) {
    print('Hallooww $name');
  }

  int perkalian(int x, int y) {
    return x + y;
  }

  Person(this.name, this.age, this.address);
}

void main() {
  /*
  var person1 = Person();
  print(person1.name);
  print(person1.age);
  print(person1.address);

  var person2 = Person();
  person2.name = 'Difa';
  print(person2.name);
  person2.sayHai(person2.name);
  */

  var person3 = Person('Difa', 30, 'Yogyakarta');
  print(person3.name);
  print(person3.age);
  print(person3.address);

  person3.name = 'Shandika';
  print(person3.name);
}
