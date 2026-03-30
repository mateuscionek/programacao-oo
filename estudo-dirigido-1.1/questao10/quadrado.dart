class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere) {
    if (this.lado <= 0) this.lado = 1;
    if (this.caractere.isEmpty || this.caractere.length > 1) this.caractere = "*";
  }

  double calcularArea() => lado * lado;
  double calcularPerimetro() => lado * 4;

  void desenhar() {
    int tamanho = lado.toInt();
    for (int i = 0; i < tamanho; i++) {
      print(caractere * tamanho);
    }
  }

  void exibirResumo() {
    print("Quadrado de lado $lado | Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}");
  }

  bool ehIgual(Quadrado outroQuadrado) => this.lado == outroQuadrado.lado;
}