void main() {
  emitNumbers().listen((value) {
    print('Número: $value');
  });
}

Stream<int> emitNumbers() async* {
  final nrs = [1, 2, 3, 4, 5];
  for (int i in nrs) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
