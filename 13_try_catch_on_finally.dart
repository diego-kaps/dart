// Solo puedes usar await en funciones asíncronas.
void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("http://diego-villalba.com/dart");
    print(value);

  } on Exception {
    print("Tenemos una Exception");
  
  } catch (err) {
    print("Tenemos un error: $err");
  } finally {
    print("Fin del Try-Catch");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  // Pasó a ser síncrono y secuencial.
  await Future.delayed(const Duration(seconds: 1));
 
  throw Exception("Error en la petición"); 

  // throw "Error en la petición" => Error no controlado.
  // return "Tenemos un valor HTTP";
}
