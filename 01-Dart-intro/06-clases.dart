void main() {
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine);
}

class Hero {
  final String name;
  final String power;

  Hero({required this.name, required this.power});

  // Hero(this.name, this.power);

  // Hero(String pName, String pPower) : name = pName, power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }
}
