class Pessoa {
  String _nome = "";
  int _idade = 0;

  Pessoa(String nome, int idade) {
    if (nome.isEmpty) {
      _nome = "Indefinido";
    } else {
      _nome = nome;
    }

    if (idade < 0) {
      _idade = 0;
    } else {
      _idade = idade;
    }
  }

  void exibirDados() {
    print("Pessoa: $_nome, Idade: $_idade anos.");
  }
}