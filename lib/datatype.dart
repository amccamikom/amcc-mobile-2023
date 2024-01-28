void main() {
  // Integers
  int number = 2020;
  print('Int: $number');

  // Doubles
  double withoutDecimal = 1.5;
  var pi = 3.14;
  print('Double without Decimal: $withoutDecimal');
  print('Double Pi: $pi');
  
  // Parsing String to Integer and Double
  var eleven = int.parse('11');
  var elevenPointTwo = double.parse('11.2');
  var elevenAsString = 11.toString();
  var piAsString = 3.14159.toStringAsFixed(2);
  
  print('Parsed Integer: $eleven');
  print('Parsed Double: $elevenPointTwo');
  print('Integer as String: $elevenAsString');
  print('Pi as String (with 2 decimal places): $piAsString');

  // Strings
  String kata = 'Ini adalah String';
  String word = "ini adalah String";
  print('String 1: $kata');
  print('String 2: $word');

  // Handling Quotes in Strings
  print('"I think it\'s great!" I answered confidently');
  print("Windows path: C:\\Program Files\\Dart");

  // String Interpolation
  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');

  // Raw String
  print(r'Dia baru saja membeli komputer seharga $1,000.00');

  // Boolean
  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;

  if (alwaysTrue == true) {
    print("true");
  } else if (alwaysFalse == false) {
    print("false");
  } else if (notTrue == true) {
    print("false");
  } else if (notFalse == true) {
    print("true");
  }
}
