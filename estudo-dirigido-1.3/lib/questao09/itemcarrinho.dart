import 'produto.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade);

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set quantidade(int valor) {
    if (valor > 0) _quantidade = valor;
  }

  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  void exibirItem() {
    print('Produto: ${_produto.nome}');
    print('Quantidade: $_quantidade');
    print('Subtotal: ${calcularSubtotal()}');
  }
}