class Circulo {
  double _raio;
  String _cor;
  static const double PI = 3.14;

  Circulo(this._raio, this._cor) {
    if (this._raio <= 0) this._raio = 1.0;
    if (this._cor.isEmpty) this._cor = "Branco";
  }

  double calcularArea() => PI * (_raio * _raio);

  double calcularPerimetro() => 2 * PI * _raio;

  void exibirResumo() {
    print("Raio: $_raio | Cor: $_cor");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}\n");
  }
}