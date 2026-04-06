import 'comodo.dart';

class Casa {
  String _proprietario;
  Comodo c1, c2, c3;

  Casa(this._proprietario, this.c1, this.c2, this.c3) {
    if (this._proprietario.isEmpty) this._proprietario = "Desconhecido";
  }

  double calcularAreaTotal() => c1._tamanho + c2._tamanho + c3._tamanho;

  void exibirCasa() {
    print("Casa de ${_proprietario} | Área Total: ${calcularAreaTotal()} m²");
  }
}