import 'produto.dart';

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    if (this._numero <= 0) this._numero = 1;
    if (this._quantidade <= 0) this._quantidade = 1;
  }

  double calcularTotal() => _produto.preco * _quantidade;

  void exibirPedido() {
    print("Pedido #${_numero}");
    print("Produto: ${_produto.nome} (R\$ ${_produto.preco} cada)");
    print("Quantidade: ${_quantidade} | Total: R\$ ${calcularTotal()}\n");
  }
}