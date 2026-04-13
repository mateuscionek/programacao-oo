class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente!');
    }
  }

  void exibir() {
    print('Titular: $_titular');
    print('Saldo: $_saldo');
  }
}