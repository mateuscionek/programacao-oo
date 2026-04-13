class Televisao {
  int _canal;
  int _volume;

  Televisao(this._canal, this._volume);

  int get canal => _canal;
  set canal(int novoCanal) => _canal = novoCanal;

  int get volume => _volume;
  set volume(int novoVolume) => _volume = novoVolume;

  void exibir() {
    print('TV -> Canal: $_canal | Volume: $_volume');
  }
}