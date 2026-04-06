class Endereco {
  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(this._rua, this._numero, this._bairro, this._cidade, this._estado, this._cep) {
    if (this._rua.isEmpty) this._rua = "Rua Indefinida";
    if (this._numero <= 0) this._numero = 1;
    if (this._bairro.isEmpty) this._bairro = "Bairro Indefinido";
    if (this._cidade.isEmpty) this._cidade = "Cidade Indefinida";
    if (this._estado.isEmpty) this._estado = "Estado Indefinido";
    if (this._cep <= 0) this._cep = 00000000;
  }

  void exibirEndereco() {
    String cepPostado = _cep.toString().padLeft(8, '0');
    String cepFormatado = "${cepPostado.substring(0, 5)}-${cepPostado.substring(5)}";

    print("Endereço: $_rua, $_numero");
    print("Bairro: $_bairro | Cidade: $_cidade - $_estado");
    print("CEP: $cepFormatado\n");
  }
}