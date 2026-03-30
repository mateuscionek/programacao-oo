class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (this.nome.isEmpty) this.nome = "Indefinido";
    if (this.idade < 0) this.idade = 0;
  }

  void exibirDados() {
    print("Pessoa: $nome, Idade: $idade anos.");
  }
}