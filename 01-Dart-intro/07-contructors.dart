void main() {
  // final ironman = Hero(isAlisve: false, power: 'Money', name: "Tony Stark");

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  final ironman2 = Hero.fromJson(rawJson);

  // print(ironman);
  print(ironman2);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? "Alive" : "Dead"}';
  }
}
