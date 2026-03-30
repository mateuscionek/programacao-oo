class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    if (this.codigo <= 0) this.codigo = 1;
    if (this.nome.isEmpty) this.nome = "Sem nome";
    if (this.precoUnitario <= 0) this.precoUnitario = 1.0;
    if (this.quantidade <= 0) this.quantidade = 1;
  }

  double calcularDesconto() {
    double totalSemDesconto = precoUnitario * quantidade;
    if (quantidade >= 20) return totalSemDesconto * 0.15;
    if (quantidade >= 10) return totalSemDesconto * 0.10;
    if (quantidade >= 5) return totalSemDesconto * 0.05;
    return 0.0;
  }

  double calcularTotal() => (precoUnitario * quantidade) - calcularDesconto();

  void exibirResumo() {
    print("Produto [$codigo] $nome | Qtd: $quantidade | Preço: R\$ $precoUnitario");
    print("Desconto: R\$ ${calcularDesconto()} | Total a pagar: R\$ ${calcularTotal()}\n");
  }
}