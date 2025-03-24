void main() {
  final mySquare = Square(side: 10);

  mySquare.side = 5;

  print('área: ${mySquare.calculateArea()}');
}

class Square {
  // Variable privada.
  double _side; // side * side

  Square({required double side}) : assert(side >= 0, "Size must be equal or greater than Zero."), _side = side;

  double get area {
    return _side * _side;
  }

  void set side( double value ) {
    print("Setting new value: $value");
    
    if (value < 0) throw "Value must be >= 0";

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
