import '../questao01/cliente.dart';

class ListaCliente {
  List<Cliente> _clientes = [];

  void inserir(Cliente cliente) {
    _clientes.add(cliente);
  }

  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() {
    return _clientes.length;
  }

  Cliente get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    } else {
      print('Indice invalido!');
      return _clientes[0];
    }
  }

  void exibirLista() {
    for (var cliente in _clientes) {
      cliente.exibirCliente();
      print('---');
    }
  }
}