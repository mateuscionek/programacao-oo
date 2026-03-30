import 'produto.dart';

void main() {
  Produto p1 = Produto(101, "Mangá do Naruto", 25.0, 12);
  p1.exibirResumo();

  Produto p2 = Produto(102, "Sabre de Luz", 500.0, 3);
  p2.exibirResumo();
}