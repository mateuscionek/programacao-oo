class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo);

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  set preco(double valor) {
    if (valor >= 0) _preco = valor;
  }

  set estoque(int valor) {
    if (valor >= 0) _estoque = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void reporEstoque(int quantidade) {
    if (quantidade > 0) _estoque += quantidade;
  }

  void retirarEstoque(int quantidade) {
    if (quantidade > 0 && quantidade <= _estoque) {
      _estoque -= quantidade;
    } else {
      print('Estoque insuficiente!');
    }
  }

  void exibirProduto() {
    print('Nome: $_nome');
    print('Preco: $_preco');
    print('Estoque: $_estoque');
    print('Ativo: $_ativo');
  }
}