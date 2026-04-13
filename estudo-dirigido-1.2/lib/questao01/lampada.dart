class Lampada {
  bool _ligada;
  int _intensidade;

  Lampada() {
    _ligada = false;
    _intensidade = 50;
  }

  void ligar() {
    _ligada = true;
  }

  void desligar() {
    _ligada = false;
  }

  void aumentar() {
    _intensidade += 10;
  }

  void diminuir() {
    if (_intensidade > 0) {
      _intensidade -= 10;
    }
  }

  void exibirEstado() {
    print('Ligada: $_ligada');
    print('Intensidade: $_intensidade');
  }
}