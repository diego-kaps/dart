void main() {
  // Variables primitivas y Listas.
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  abilities.add("Impostor 2");

  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // Variable dinámica.
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6]; // Array
  errorMessage = {1,2,3,4,5,6}; // Set
  errorMessage = () => true;
  errorMessage = null;

  // Tener cuidado con el Null-Safety en las dinámicas.
  errorMessage += 1; // Debería dar error, pero no lo hace.

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
""");
}