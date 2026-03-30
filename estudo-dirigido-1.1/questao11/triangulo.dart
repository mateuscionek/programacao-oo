import 'dart:math';

class Triangulo {
  double lado1, lado2, lado3;
  String caractere;

  Triangulo(this.lado1, this.lado2, this.lado3, this.caractere) {
    if (lado1 <= 0) lado1 = 1;
    if (lado2 <= 0) lado2 = 1;
    if (lado3 <= 0) lado3 = 1;
    if (caractere.isEmpty || caractere.length > 1) caractere = "*";

    if (!(lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1)) {
      this.lado1 = 3; this.lado2 = 4; this.lado3 = 5; 
    }
  }

  double calcularPerimetro() => lado1 + lado2 + lado3;

  double calcularArea() {
    double p = calcularPerimetro() / 2;
    return sqrt(p * (p - lado1) * (p - lado2) * (p - lado3));
  }

  void desenharEsquerda() {
    int altura = [lado1, lado2, lado3].reduce(max).toInt();
    for (int i = 1; i <= altura; i++) {
      print(caractere * i);
    }
  }

  void desenharCentralizado() {
    int altura = [lado1, lado2, lado3].reduce(max).toInt();
    for (int i = 1; i <= altura; i++) {
      print((" " * (altura - i)) + (caractere * (2 * i - 1)));
    }
  }

  void exibirResumo() {
    print("Triângulo ($lado1, $lado2, $lado3) | Área: ${calcularArea().toStringAsFixed(2)} | Perímetro: ${calcularPerimetro()}");
  }
}