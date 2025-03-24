void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(' wind: ${chargePhone(windPlant)}');
  print(' nuclear: ${chargePhone(nuclearPlant)}');
}

/* Pueden ejecutar el método las anteriores clases porque extienden
o implementan la clase padre, ya que todas son plantas de energía.*/

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("Not enough energy");
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

// Definimos una firma para aquellas clases que extiendan o implementen de esta.

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Implements: Si queremos algo en particular de la clase padre.
// Extends: Si queremos varios contenidos de la clase padre.

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
