void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Pablo'));
}

// String greetEveryone() {
//   return 'Hello everyone!';
// }

String greetEveryone() => 'Hello everyone!';

// int addTwoNumbers(a, b) {
//   return a + b;
// }

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??= 0;

  return a + b;
}

String greetPerson({required String name, String message = 'Hi'}) {
  return 'Hello person!';
}
