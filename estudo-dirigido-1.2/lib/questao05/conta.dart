class Conta {
  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) {
    _saldo = 0;
  }

  Conta.vip(this._numero, this._titular, this._saldo);

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

  void exibirResumo() {
    print('Numero: $_numero');
    print('Titular: $_titular');
    print('Saldo: $_saldo');
  }
}