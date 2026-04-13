class Contato {
  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone);

  String getNome() {
    return _nome;
  }

  void exibir() {
    print('Nome: $_nome');
    print('Telefone: $_telefone');
  }
}