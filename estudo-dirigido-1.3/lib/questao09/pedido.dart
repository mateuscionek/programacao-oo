import 'carrinho.dart';
import 'cupom.dart';

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho, this._cupom) {
    _totalBruto = 0;
    _totalFinal = 0;
    _status = 'aberto';
  }

  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  void fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom.ativo) {
      _totalFinal = _totalBruto - _cupom.calcularDesconto(_totalBruto);
    } else {
      _totalFinal = _totalBruto;
    }
    _status = 'fechado';
  }

  void cancelarPedido() {
    _status = 'cancelado';
  }

  void exibirResumoPedido() {
    print('Numero: $_numero');
    print('Status: $_status');
    print('Total bruto: $_totalBruto');
    print('Total final: $_totalFinal');
    print('Cupom: ${_cupom.codigo}');
  }
}