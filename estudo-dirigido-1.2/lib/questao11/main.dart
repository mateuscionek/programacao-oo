import 'endereco.dart';
import 'cliente.dart';

void main() {
  Cliente c1 = Cliente('Renata', Endereco('Rua A', 10, 'Curitiba'));
  
  Cliente c2 = Cliente.copia(c1);

  c2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  c1.exibir();

  print('\nCliente copiado:');
  c2.exibir();
}

//a pq possuem endereços de memória diferentes
//b foi criado um cliente e um endereço do zero, nao apenas uma copia
//c copiar cria um atalho para o objeto, nova instancia  cria um copia igual q nao altera se for alterada