
import 'endereco.dart';
import 'pessoa.dart';

void main() {
  Endereco endMateus = Endereco("Rua X", 99, "Batel", "Curitiba", "PR", 80420000);
  Pessoa p1 = Pessoa("Mateus", 22, "111.222.333-44", endMateus);

  p1.exibirPessoa();
}