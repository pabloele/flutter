void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('List original ${numbers.length}');
  print('List original ${numbers[0]}');
  print('List original ${numbers.first}');
  print('List original ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print('List original ${numbers.last}');

  print('Iterable: $reversedNumbers');
  print('Iterable to List: ${reversedNumbers.toList()}');
  print('Iterable to Set: ${reversedNumbers.toSet()}');

  final numbersGraterThan5 = numbers.where((number) {
    return number > 5;
  });

  print(numbersGraterThan5);
}
