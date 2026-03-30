class Contador {
  int valor;

  Contador(int valorInicial) : valor = valorInicial >= 0 ? valorInicial : 0;

  void incrementar() => valor++;

  void decrementar() {
    if (valor > 0) valor--;
  }

  void zerar() => valor = 0;

  void exibirValor() => print("Contador: $valor");
}