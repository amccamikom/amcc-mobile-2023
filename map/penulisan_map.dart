void main() {
  var capital = {'Jakarta': 'Indonesia', 'London': 'England', 'Tokyo': 'Japan'};

  capital['Minas Tirith'] = 'Gondor';
  print(capital);

  //print(capital['Jakarta']);

  var mapKeys = capital.keys;
  print(mapKeys);

  var mapValues = capital.values;
  print(mapValues);
}
