import 'pessoa.dart';

void main() {
  Endereco e1 = Endereco("Rua Pedro gusso", 10, "novo mundo", "Curitiba", "PR", 80123456);
  Pessoa p1 = Pessoa("Renata", 33, "123.456.789-00", e1);

  Endereco e2 = Endereco("Rua dos josefinos", 20, "Agua verde", "Curitiba", "PR", 01001000);
  Pessoa p2 = Pessoa("Mateus", 28, "987.654.321-11", e2);

  Endereco e3 = Endereco("Alameda Central", 500, "Jardins", "Rio de Janeiro", "RJ", 20000000);
  Pessoa p3 = Pessoa("Lucas", 22, "444.555.666-77", e3);

  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}