  import 'contato.dart';

  class Agenda {
    List<Contato> _contatos;

    Agenda.vazia() {
      _contatos = [];
    }

    Agenda.comContatos(List<Contato> contatos) {
      _contatos = contatos;
    }

    void adicionarContato(Contato contato) {
      _contatos.add(contato);
    }

    void removerContatoPorNome(String nome) {
      _contatos.removeWhere((c) => c.getNome() == nome);
    }

    void listarContatos() {
      for (var contato in _contatos) {
        contato.exibir();
        print('---');
      }
    }
  }

  