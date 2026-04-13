import 'itemcarrinho.dart';

class ListaCarrinho {
  List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() {
    return _itens.length;
  }

  ItemCarrinho get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    } else {
      print('Indice invalido!');
      return _itens[0];
    }
  }

  void exibirLista() {
    for (var item in _itens) {
      item.exibirItem();
      print('');
    }
  }
}