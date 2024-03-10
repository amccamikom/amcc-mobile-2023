void main() {
  var numberSet = {2, 5, 7};
  Set<int> anotherSet = new Set.from([2, 5, 7, 5, 2]);

  print(anotherSet);

  print(numberSet);

  numberSet.add(6);
  numberSet.addAll({2, 2, 3});

  numberSet.remove(0);

  var setA = {1, 3, 5, 6};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print(union);
  print(intersection);
}
