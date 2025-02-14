import 'package:anybank/conta.dart';

class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (getSaldo() + emprestimo >= valor) {
      setSaldo(getSaldo() - valor);
    } else {
      print('Saldo insuficiente.');
    }
  }
}
