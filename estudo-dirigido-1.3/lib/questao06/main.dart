import 'listacarrinho.dart';
import 'itemcarrinho.dart';
import 'produto.dart';

void main() {
  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);
  Produto p3 = Produto('Tenis', 199.90, 3, true);

  ItemCarrinho i1 = ItemCarrinho(p1, 2);
  ItemCarrinho i2 = ItemCarrinho(p2, 1);
  ItemCarrinho i3 = ItemCarrinho(p3, 3);

  ListaCarrinho lista = ListaCarrinho();

  lista.inserir(i1);
  lista.inserir(i2);
  lista.inserir(i3);

  print('Lista completa:');
  lista.exibirLista();

  print('Tamanho: ${lista.tamanho()}');

  lista.remover(1);
  print('Apos remover indice 1:');
  lista.exibirLista();

  print('Item no indice 0:');
  lista.get(0).exibirItem();
}