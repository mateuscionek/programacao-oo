class Semaforo {
  String _corAtual = "🔴";
  int _tempoRestante = 5;

  void trocarCor() {
    if (_corAtual == "🔴") { _corAtual = "🟢"; _tempoRestante = 4; }
    else if (_corAtual == "🟢") { _corAtual = "🟡"; _tempoRestante = 2; }
    else if (_corAtual == "🟡") { _corAtual = "🔴"; _tempoRestante = 5; }
  }

  void reduzirTempo() {
    if (_tempoRestante > 0) _tempoRestante--;
    if (_tempoRestante == 0) trocarCor();
  }

  void exibirEstado() => print("Semáforo: ${_corAtual} | Tempo: ${_tempoRestante} s");
}