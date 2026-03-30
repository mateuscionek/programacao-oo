
import 'endereco.dart';

class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (this.nome.isEmpty) this.nome = "Indefinido";
    if (this.idade < 0) this.idade = 0;
    if (this.cpf.isEmpty) this.cpf = "000.000.000-00";
  }

  void exibirPessoa() {
    print("Nome: $nome, Idade: $idade, CPF: $cpf");
    print("Residência: ");
    endereco.exibirEndereco();
    print("---");
  }
}