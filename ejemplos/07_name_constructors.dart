void main() {

  // Simulamos recibimiento de valor de una petición HTTP.
  final Map<String, dynamic> rawJson = {
    "name": "Tony Stark",
    "power": "Money",
    "isAlive": true
  };

  final ironman = Hero(
  name: "Tony",
  power: "Fire",
  isAlive: false);

  // Toma el mapa creado y asigna los parámetros.
  final ironjson = Hero.fromJson(rawJson);

  print(ironman);
  print(ironjson);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  // Constructor con nombre. Se pone un punto seguido de dicho nombre.
  Hero.fromJson( Map<String, dynamic> json)
  // Es case-sensitive y hay margen de error, manejar nulos.
  : name = json["name"] ?? "No name found",
  power = json["power"] ?? "No power found",
  isAlive = json["isAlive"] ?? "No isAlive found";


  @override
  String toString() {
    return '$name, $power, ${isAlive ? "YES!" : "Nope"}';
  }
}
