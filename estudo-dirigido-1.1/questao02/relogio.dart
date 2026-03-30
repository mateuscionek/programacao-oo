

class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo) {
    if (hora < 0 || hora > 23) throw ArgumentError('Hora deve ser entre 0 e 23');
    if (minuto < 0 || minuto > 59) throw ArgumentError('Minuto deve ser entre 0 e 59');
    if (segundo < 0 || segundo > 59) throw ArgumentError('Segundo deve ser entre 0 e 59');
  }

  // Formata com zero à esquerda se necessário (ex: 9 -> "09")
  String _pad(int valor) => valor.toString().padLeft(2, '0');

  void exibirHorario() {
    print('Horário: ${_pad(hora)}:${_pad(minuto)}:${_pad(segundo)}');
    print('---');
  }
}
