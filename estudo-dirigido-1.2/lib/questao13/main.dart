import 'pessoa.dart';
import 'carteira.dart';

void main() {
  Pessoa p1 = Pessoa('Mateus', Carteira(100));
  Pessoa p2 = p1;

  print('inicio:');
  p1.exibir();
  p2.exibir();

  p2.carteira.adicionar(50);

  print('\nDepois:');
  p1.exibir();
  p2.exibir();
}

//a) Porque p2 = p1 copia a referência, não o objeto,os dois apontam para o mesmo lugar na memória
//b) Armazenam uma referência, não o objeto inteiro
//c) Variáveis locais ficam na stack, objetos criados com construtores ficam na heap
//d) Quando p2 = null, nenhuma variável aponta mais para o objeto — ele vira elegível para o garbage collector