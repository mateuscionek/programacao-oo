class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (this.rua.isEmpty) this.rua = "Indefinida";
    if (this.numero <= 0) this.numero = 1;
    if (this.bairro.isEmpty) this.bairro = "Indefinido";
    if (this.cidade.isEmpty) this.cidade = "Indefinida";
    if (this.estado.isEmpty) this.estado = "Indefinido";
  }

  void exibirEndereco() {
    String cepStr = cep.toString().padLeft(8, '0');
    String cepFormatado = "${cepStr.substring(0, 5)}-${cepStr.substring(5)}";
    print("$rua, $numero - $bairro, $cidade - $estado | CEP: $cepFormatado");
  }
}