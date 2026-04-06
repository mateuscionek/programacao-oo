class Quadrado {
  double _lado;
  String _caractere;

  Quadrado(this._lado, this._caractere) {
    if (this._lado <= 0) this._lado = 1.0;
    if (this._caractere.isEmpty || this._caractere.length > 1) this._caractere = "*";
  }

  double calcularArea() => _lado * _lado;

  double calcularPerimetro() => _lado * 4;

  void desenhar() {
    int l = _lado.toInt();
    for (int i = 0; i < l; i++) {
      print(_caractere * l);
    }
    print("");
  }

  void exibirResumo() {
    print("Lado: $_lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}\n");
  }

  bool ehIgual(Quadrado outro) {
    return this._lado == outro._lado && this._caractere == outro._caractere;
  }
}