void main() {
  var numberSet = {2, 5, 7};
  Set<int> anotherSet = new Set.from([2, 5, 7, 5, 2]);

  print(anotherSet);
  print(numberSet);

  numberSet.add(6);
  numberSet.addAll({2, 2, 3});

  numberSet.remove(2);

  print(numberSet);

  var setDifa = {1, 3, 5, 6};
  var setDifaJuga = {1, 5, 7};

  var union = setDifa.union(setDifaJuga);
  var intersection = setDifa.intersection(setDifaJuga);

  print(union);
  print(intersection);
}
