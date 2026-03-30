class Semaforo {
  String corAtual = "🔴";
  int tempoRestante = 5;

  void trocarCor() {
    if (corAtual == "🔴") { corAtual = "🟢"; tempoRestante = 4; }
    else if (corAtual == "🟢") { corAtual = "🟡"; tempoRestante = 2; }
    else if (corAtual == "🟡") { corAtual = "🔴"; tempoRestante = 5; }
  }

  void reduzirTempo() {
    if (tempoRestante > 0) tempoRestante--;
    if (tempoRestante == 0) trocarCor();
  }

  void exibirEstado() => print("Semáforo: $corAtual | Tempo: $tempoRestante s");
}