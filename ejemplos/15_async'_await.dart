void main() {

  emitNumber()
  .listen( (value) {
    print("Stream Value: $value");
  });
}

// Función o método que regresa un Stream.

Stream emitNumber() async* {

  final valuesToEmit = [1,2,3,4,5];
  for (int i in valuesToEmit ) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Toma el valor actual y lo pasa.
  }
}