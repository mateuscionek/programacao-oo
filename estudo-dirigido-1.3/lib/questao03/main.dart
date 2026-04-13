import 'produto.dart';

void main() {
  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);

  print(' Produto 1 ');
  p1.exibirProduto();

  p1.nome = 'Camiseta Premium';
  p1.reporEstoque(20);

  print('Produto 1 atualizado ');
  p1.exibirProduto();

  print(' Produto 2 ');
  p2.exibirProduto();

  p2.desativar();
  p2.retirarEstoque(3);

  print(' Produto 2 atualizado ');
  p2.exibirProduto();
}