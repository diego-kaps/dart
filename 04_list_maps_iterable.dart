void main() {
  // Los iterables NO GARANTIZAN que leer elementos con índice será eficiente.
  Iterable<int> iterable = [1, 2, 3];
  // NO HACER: iterable[1];

  // Hacer esto:
  int valor = iterable.elementAt(1);
  print("Valor en la segunda posición: $valor");

  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  print("Lista Original $numbers");
  print("Longitud ${numbers.length}");
  print("Index 0: ${numbers[0]}");
  print("First: ${numbers.first}");
  print("Last: ${numbers.last}");

  final reversedNumbers = numbers.reversed;
  // Cuando pasa de '[]' a '()' se convierte en un iterable.
  // Conjunto de datos ordenado que saben el orden de los elementos y que permiten interacciones.
  print("Iterable $reversedNumbers");
  // La lista es definida con []
  print("Lista: ${reversedNumbers.toList()}");
  // Set, lógicamente, elimina los valores duplicados. Usa {}.
  print("Set: ${reversedNumbers.toSet()}");

  final numbersGreaterThan5 = numbers.where( (int num) => num > 5);
  print(">5: ${numbersGreaterThan5}");
  print("Set >5: ${numbersGreaterThan5.toSet()}");
}