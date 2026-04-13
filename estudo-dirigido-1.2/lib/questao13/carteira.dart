class Carteira {
  double _saldo;

  Carteira(this._saldo);

  void adicionar(double valor) {
    _saldo += valor;
  }

  void exibir() {
    print('Saldo: $_saldo');
  }
}