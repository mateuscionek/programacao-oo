class Contador {
  int _valor;

  Contador(this._valor) {
    if (this._valor < 0) {
      this._valor = 0;
    }
  }

  void incrementar() {
    _valor++;
  }

  void decrementar() {
    if (_valor > 0) {
      _valor--;
    }
  }

  void zerar() {
    _valor = 0;
  }

  void exibirValor() {
    print("Valor atual: $_valor");
  }
}