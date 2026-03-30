class Circulo {
  double raio;
  String cor;
  static const double pi = 3.14;

  Circulo(this.raio, this.cor) {
    if (this.raio <= 0) this.raio = 1.0;
    if (this.cor.isEmpty) this.cor = "Branco";
  }

  double calcularArea() => pi * (raio * raio);
  double calcularPerimetro() => 2 * pi * raio;

  void exibirResumo() {
    print("Círculo $cor | Raio: $raio | Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}");
  }
}