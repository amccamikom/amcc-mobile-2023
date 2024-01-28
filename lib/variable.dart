void main() {
  // int - Integer
  int age = 25;

  // double - Double-precision floating-point
  double height = 1.75;

  // num - Numeric type that can represent both int and double
  num weight = 68.5;

  // bool - Boolean (true or false)
  bool isStudent = true;

  // String - Textual data
  String name = 'John';

  // List - Ordered collection of items
  List<int> numbers = [1, 2, 3, 4, 5];

  // Map - Collection of key-value pairs
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 30,
    'isStudent': false,
  };

  // dynamic - A type that can represent any value
  dynamic dynamicVariable = 'This can be a String';
  print(dynamicVariable);

  dynamicVariable = 42;
  print(dynamicVariable);

  // Printing values
  print('Age: $age');
  print('Height: $height');
  print('Weight: $weight');
  print('Is Student: $isStudent');
  print('Name: $name');
  print('Numbers: $numbers');
  print('Person: $person');
}
