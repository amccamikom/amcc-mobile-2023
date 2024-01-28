void main() {
  // Arithmetic Operators
  int a = 10;
  int b = 5;
  print('Arithmetic Operators:');
  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
  print('Multiplication: ${a * b}');
  print('Division: ${a / b}');
  print('Modulus: ${a % b}');
  print('\n');

  // Comparison Operators
  print('Comparison Operators:');
  bool isEqual = (a == b);
  bool isNotEqual = (a != b);
  bool isGreater = (a > b);
  bool isLess = (a < b);
  bool isGreaterOrEqual = (a >= b);
  bool isLessOrEqual = (a <= b);
  
  print('Is Equal: $isEqual');
  print('Is Not Equal: $isNotEqual');
  print('Is Greater: $isGreater');
  print('Is Less: $isLess');
  print('Is Greater or Equal: $isGreaterOrEqual');
  print('Is Less or Equal: $isLessOrEqual');
  print('\n');

  // Assignment Operators
  print('Assignment Operators:');
  int c = a;
  c += b; // c = c + b;
  print('Value of c after addition: $c');
  print('\n');

  // Unary Operators (Negation)
  print('Unary Operators (Negation):');
  bool isTrue = true;
  bool isFalse = false;
  print('Not True: ${!isTrue}');
  print('Not False: ${!isFalse}');
}
