// Solo puedes usar await en funciones asíncronas.
void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("http://diego-villalba.com/dart");
    print(value);
  } catch (err) {
    print("Tenemos un error: $err");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  // Pasó a ser síncrono y secuencial.
  await Future.delayed(const Duration(seconds: 1));
 
  throw "Error en la petición";
 // return "Tenemos un valor HTTP";
}
