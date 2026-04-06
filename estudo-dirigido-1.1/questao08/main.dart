import 'endereco.dart';

void main() {
  Endereco e1 = Endereco("dos josefinos", 123, "agua Verde", "Curitiba", "PR", 80000000);
  Endereco e2 = Endereco("Avenida Paulista", 1500, "Centro", "São Paulo", "SP", 01311200);
  Endereco e3 = Endereco("Rua marechal deodoro", 221, "centro", "Curitiba", "PR", 12345678);

  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}