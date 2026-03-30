import 'pessoa.dart';

void main() {
  Pessoa p1 = Pessoa("Mateus", 22);
  Pessoa p2 = Pessoa("Renata", 21);
  Pessoa p3 = Pessoa("Edward Cullen", 104);

  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}