void main() {
  print("Inicio del programa");

  // Trabajo asíncrono.
  httpGet("https://diego-villalba.com/dart")
  .then((value) => print(value))
  .catchError(
    (err) => print("Error $err")
  );

  print("Fin del programa");
}

Future<String> httpGet( String url ) {
  return Future.delayed( const Duration(seconds: 1), () {
    throw "Error en la petición HTTP";
    // return "Respuesta de la petición HTTP";
  });
}