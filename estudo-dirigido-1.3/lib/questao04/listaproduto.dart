import 'produto.dart';

class ListaProduto {
  List<Produto> _produtos = [];

  void inserir(Produto produto) {
    _produtos.add(produto);
  }

  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() {
    return _produtos.length;
  }

  Produto get(int i) {
    if (i >= 0 && i < _produtos.length) {
      return _produtos[i];
    } else {
      print('Indice invalido!');
      return _produtos[0];
    }
  }

  void exibirLista() {
    for (var produto in _produtos) {
      produto.exibirProduto();
      print('');
    }
  }
}