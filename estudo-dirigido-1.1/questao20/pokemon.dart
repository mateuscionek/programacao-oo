class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (this._nivel < 1 || this._nivel > 100) this._nivel = 1;
    if (this._hp <= 0) this._hp = 10;
  }
}