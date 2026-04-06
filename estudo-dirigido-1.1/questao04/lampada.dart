class Lampada {
  bool _ligada = false;
  int _quantidadeLigacoes = 0;
  bool _queimada = false;

  void ligar() {
    if (_queimada == false) {
      _ligada = true;
      _quantidadeLigacoes++;
      
      if (_quantidadeLigacoes >= 5) {
        _queimada = true;
        _ligada = false;
      }
    }
  }

  void desligar() {
    if (_queimada == false) {
      _ligada = false;
    }
  }

  void exibirEstado() {
    if (_queimada == true) {
      print("Estado: Queimada");
    } else if (_ligada == true) {
      print("Estado: Ligada");
    } else {
      print("Estado: Desligada");
    }
  }
}