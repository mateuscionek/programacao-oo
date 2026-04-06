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
    if (this._cep <= 0) this._cep = 0;
  }

  void exibirEndereco() {
    String cepPostado = _cep.toString().padLeft(8, '0');
    String cepFormatado = "${cepPostado.substring(0, 5)}-${cepPostado.substring(5)}";
    print("Endereço: $_rua, $_numero - $_bairro - $_cidade/$_estado (CEP: $cepFormatado)");
  }
}

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco;

  Pessoa(this._nome, this._idade, this._cpf, this._endereco) {
    if (this._nome.isEmpty) this._nome = "Sem nome";
    if (this._idade < 0) this._idade = 0;
    if (this._cpf.isEmpty) this._cpf = "Sem CPF";
  }

  void exibirPessoa() {
    print("Nome: $_nome | Idade: $_idade | CPF: $_cpf");
    _endereco.exibirEndereco();
    print("------------------------------------------------");
  }
}