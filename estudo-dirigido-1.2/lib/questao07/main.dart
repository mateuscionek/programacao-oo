import 'personagem.dart';

void main() {
  Personagem p1 = Personagem('Vegeta', 100, 50);
  Personagem p2 = p1;

  print('Antes:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(1);

  print('Depois:');
  p1.exibir();
  p2.exibir();
}

//a) pois p2 é igual a p1
//b)sim, pois as duas variestao apontando para o mesmo endereço