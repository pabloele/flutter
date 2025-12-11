void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 500);
  print(windPlant);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;

  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy to charge the phone');
  }

  return plant.energyLeft -= 10;
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }

  @override
  String toString() {
    return 'Wind Plant - Energy left: $energyLeft';
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }

  NuclearPlant({required this.energyLeft});
}
