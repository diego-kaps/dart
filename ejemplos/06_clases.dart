void main() {
  final Hero Wolverine = Hero(name: "Logan", power: "Regeneración");

  print(Wolverine); // Muestra la instancia.
  print(Wolverine.name); // Nombre.
  print(Wolverine.power); // Poder.
}

class Hero {
  String name;
  String power;

  // Instanciación común. Las llaves {} indican argumentos por nombre.
  Hero({required this.name,
      this.power = "Sin poder"});
      // Valor del poder por defecto, salvo que se asigne uno propio.

  // Instanciación controlada.
  // Hero(String pName, String pPower)
  // : name = pName,
  // power = pPower;


  // Al sobreescribir un método, se añade lo siguiente:
  @override
  String toString() {
    return "$name - $power";
  }
}
