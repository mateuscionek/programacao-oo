import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    if (_lado1 <= 0) _lado1 = 1;
    if (_lado2 <= 0) _lado2 = 1;
    if (_lado3 <= 0) _lado3 = 1;
    if (_caractere.isEmpty || _caractere.length > 1) _caractere = "*";

    if (!(_lado1 + _lado2 > _lado3 && _lado1 + _lado3 > _lado2 && _lado2 + _lado3 > _lado1)) {
      _lado1 = 3;
      _lado2 = 4;
      _lado3 = 5;
    }
  }

  void setLado1(double valor) => _lado1 = valor > 0 ? valor : _lado1;
  void setLado2(double valor) => _lado2 = valor > 0 ? valor : _lado2;
  void setLado3(double valor) => _lado3 = valor > 0 ? valor : _lado3;

  double calcularPerimetro() => _lado1 + _lado2 + _lado3;

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int altura = _lado1.toInt();
    for (int i = 1; i <= altura; i++) {
      print(_caractere * i);
    }
    print("");
  }

  void desenharCentralizado() {
    int altura = _lado1.toInt();
    for (int i = 1; i <= altura; i++) {
      String espaços = " " * (altura - i);
      String icones = _caractere * (2 * i - 1);
      print("$espaços$icones");
    }
    print("");
  }

  void exibirResumo() {
    print("Lados: $_lado1, $_lado2, $_lado3");
    print("Área (Heron): ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro()}\n");
  }
}