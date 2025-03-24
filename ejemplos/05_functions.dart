void main() {
  String respuesta = greetPerson(name: "Diego", message: "Buenas");
  print(respuesta);
}

String greetEveryone() => "Hello Everyone";
int sumarNumeros(int a, int b) => a + b;
// Las llaves [] indica que es un parámetro opcional
int sumarNumerosOpcional(int a, [int b = 0]) { // Int Opcional: int?. 
 // b = b ?? 0; // Si tiene un valor se usa dicho valor, en caso contrario 0.
  return a + b;
}

// Se debe otorgar obligatoriamente el nombre.
String greetPerson({ required String? name, String? message = "Hola"}) { 
// El valor de message será "Hola" de manera predeterminada.
  return "$message, Diego";
}