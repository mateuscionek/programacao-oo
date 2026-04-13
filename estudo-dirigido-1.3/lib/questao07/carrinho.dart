import 'cliente.dart';
import 'listacarrinho.dart';
import 'itemcarrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.inserir(item);
    } else {
      print('Carrinho fechado!');
    }
  }

  void removerItem(int i) {
    if (_aberto) {
      _itens.remover(i);
    } else {
      print('Carrinho fechado!');
    }
  }

  double calcularTotal() {
    return _itens.calcularTotal();
  }

  void exibirCarrinho() {
    print('Cliente: ${_cliente.nome}');
    print('Aberto: $_aberto');
    print('Itens:');
    _itens.exibirLista();
    print('Total: ${calcularTotal()}');
  }
}