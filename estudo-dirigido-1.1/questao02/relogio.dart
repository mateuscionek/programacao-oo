class Relogio {
  int _hora = 0;
  int _minuto = 0;
  int _segundo = 0;

  Relogio(int hora, int minuto, int segundo) {
    if (hora >= 0 && hora <= 23) _hora = hora;
    if (minuto >= 0 && minuto <= 59) _minuto = minuto;
    if (segundo >= 0 && segundo <= 59) _segundo = segundo;
  }

  void exibirHorario() {
    String h = _hora.toString().padLeft(2, '0');
    String m = _minuto.toString().padLeft(2, '0');
    String s = _segundo.toString().padLeft(2, '0');
    print("Horário: $h:$m:$s");
  }
}