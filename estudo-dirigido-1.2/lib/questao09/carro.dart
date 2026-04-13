class Carro{
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem);

  int get quilometragem => _quilometragem;
  void set quilometragem(int novaQuilometragem) => _quilometragem = novaQuilometragem;

  void exibir() {
    print('Modelo: $_modelo | Quilometragem: $_quilometragem');
  }
}