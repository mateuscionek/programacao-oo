class Cofrinho {
  double _saldo = 0.0;
  int _quantidadeDepositos = 0;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      _quantidadeDepositos++;
      print("Depositou R\$ $valor");
    }
  }

  void quebrar() {
    print("Cofrinho quebrado! Você resgatou R\$ ${_saldo} (Depositos: ${_quantidadeDepositos})");
    _saldo = 0.0;
    _quantidadeDepositos = 0;
  }

  void exibirSaldo() => print("Saldo atual: R\$ ${_saldo}");
}