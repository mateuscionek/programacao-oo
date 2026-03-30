import 'produto.dart';

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade) {
    if (this.numero <= 0) this.numero = 1;
    if (this.quantidade <= 0) this.quantidade = 1;
  }

  double calcularTotal() => produto.preco * quantidade;

  void exibirPedido() {
    print("Pedido #$numero");
    print("Produto: ${produto.nome} (R\$ ${produto.preco} cada)");
    print("Quantidade: $quantidade | Total: R\$ ${calcularTotal()}\n");
  }
}