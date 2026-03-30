import 'comodo.dart';

class Casa {
  String proprietario;
  Comodo c1, c2, c3;

  Casa(this.proprietario, this.c1, this.c2, this.c3) {
    if (this.proprietario.isEmpty) this.proprietario = "Desconhecido";
  }

  double calcularAreaTotal() => c1.tamanho + c2.tamanho + c3.tamanho;

  void exibirCasa() {
    print("Casa de $proprietario | Área Total: ${calcularAreaTotal()} m²");
  }
}