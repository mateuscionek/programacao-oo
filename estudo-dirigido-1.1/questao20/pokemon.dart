class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (this.nivel < 1 || this.nivel > 100) this.nivel = 1;
    if (this.hp <= 0) this.hp = 10;
  }
}