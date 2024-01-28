void main() {
  // If & Else
  int x = 10;
  if (x > 5) {
    print('x is greater than 5');
  } else {
    print('x is less than or equal to 5');
  }
  
  // Switch Case
  String day = 'Monday';
  switch (day) {
    case 'Monday':
      print('It\'s the start of the week.');
      break;
    case 'Friday':
      print('Weekend is almost here.');
      break;
    default:
      print('It\'s a regular day.');
  }
  
  // Ternary Operator
  int y = 7;
  String result = (y % 2 == 0) ? 'Even' : 'Odd';
  print('Number $y is $result');
}
