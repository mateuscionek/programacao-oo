import 'carro.dart';
import 'oficina.dart';

void main() {
  Carro carro = Carro('Fusca', 12000);
  
  Oficina oficina = Oficina();

  print('Antes da revisão:');
  carro.exibir();

  oficina.revisar(carro);

  print('Depois da revisão:');
  carro.exibir();
}

//a)a funçao recebr apenas o endereço da memoria, pq o objeto virou funçao
//b)nao, pois a oficina buscou o mesmo objeto na main