class Personagem {
  String _nome;
  int _vida;
  int _ataque;

  Personagem(this._nome, this._vida, this._ataque) {
    if (this._nome.isEmpty) this._nome = "NPC";
    if (this._vida <= 0) this._vida = 100;
    if (this._ataque <= 0) this._ataque = 10;
  }

  bool estaVivo() => _vida > 0;

  void atacar(Personagem inimigo) {
    if (estaVivo()) {
      print("${_nome} ataca ${inimigo._nome} causando ${_ataque} de dano!");
      inimigo._vida -= _ataque;
      if (inimigo._vida < 0) inimigo._vida = 0;
    } else {
      print("${_nome} foi derrotado e não pode atacar.");
    }
  }

  void exibirStatus() => print("Personagem: ${_nome} | Vida: ${_vida} | Ataque: ${_ataque}");
}