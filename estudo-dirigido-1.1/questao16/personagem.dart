class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (this.nome.isEmpty) this.nome = "NPC";
    if (this.vida <= 0) this.vida = 100;
    if (this.ataque <= 0) this.ataque = 10;
  }

  bool estaVivo() => vida > 0;

  void atacar(Personagem inimigo) {
    if (estaVivo()) {
      print("$nome ataca ${inimigo.nome} causando $ataque de dano!");
      inimigo.vida -= ataque;
      if (inimigo.vida < 0) inimigo.vida = 0;
    } else {
      print("$nome foi derrotado e não pode atacar.");
    }
  }

  void exibirStatus() => print("Personagem: $nome | Vida: $vida | Ataque: $ataque");
}