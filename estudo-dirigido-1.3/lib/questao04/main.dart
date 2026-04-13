import 'listaproduto.dart';
import 'produto.dart';

void main() {
  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);
  Produto p3 = Produto('Tenis', 199.90, 3, true);

  ListaProduto lista = ListaProduto();

  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  print('Lista completa:');
  lista.exibirLista();

  print('Tamanho: ${lista.tamanho()}');

  lista.remover(1);
  print('Apos remover indice 1:');
  lista.exibirLista();

  print('Produto no indice 0:');
  lista.get(0).exibirProduto();
}