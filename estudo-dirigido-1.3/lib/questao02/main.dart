import 'listacliente.dart';
import '../questao01/cliente.dart';

void main() {
  Cliente c1 = Cliente('Mateus', 'mateus@email.com', 100.0, true);
  Cliente c2 = Cliente('Renata', 'renata@email.com', 50.0, true);
  Cliente c3 = Cliente('edward', 'edward@email.com', 200.0, false);

  ListaCliente lista = ListaCliente();

  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  print('Lista completa ');
  lista.exibirLista();

  print('Tamanho: ${lista.tamanho()}');

  lista.remover(1);
  print(' Apos remover indice 1 ');
  lista.exibirLista();

  print(' Cliente no indice 0 ');
  lista.get(0).exibirCliente();
}