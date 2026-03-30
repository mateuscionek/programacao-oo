import 'pokemon.dart';

class Treinador {
  String nome;
  Pokemon p1, p2, p3;

  Treinador(this.nome, this.p1, this.p2, this.p3);

  int calcularPoderTotal() => p1.nivel + p2.nivel + p3.nivel;

  Pokemon pokemonMaisForte() {
    Pokemon forte = p1;
    if (p2.nivel > forte.nivel) forte = p2;
    if (p3.nivel > forte.nivel) forte = p3;
    return forte;
  }

  void exibirTime() {
    print("Treinador: $nome | Poder Total: ${calcularPoderTotal()}");
    print("O mais forte é: ${pokemonMaisForte().nome}!\n");
  }
}