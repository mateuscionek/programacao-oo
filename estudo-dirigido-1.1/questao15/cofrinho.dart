class Cofrinho {
  double saldo = 0.0;
  int quantidadeDepositos = 0;

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      quantidadeDepositos++;
      print("Depositou R\$ $valor");
    }
  }

  void quebrar() {
    print("Cofrinho quebrado! Você resgatou R\$ $saldo (Depositos: $quantidadeDepositos)");
    saldo = 0.0;
    quantidadeDepositos = 0;
  }

  void exibirSaldo() => print("Saldo atual: R\$ $saldo");
}