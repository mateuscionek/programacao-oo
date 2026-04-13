class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade);

  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  void alterarRua(String novaRua) {
    _rua = novaRua;
  }
  void exibir() {
    print('Rua: $_rua, Numero: $_numero, Cidade: $_cidade');
  }
}