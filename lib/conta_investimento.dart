import 'package:anybank/conta.dart';
import 'package:anybank/imposto.dart';

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    print('Enviando R\$ ${valor + valorTaxado(valor)}.');
    super.enviar(valor + valorTaxado(valor));
  }

  @override
  void receber(double valor) {
    print('Recebendo R\$ ${valor - valorTaxado(valor)}.');
    super.receber(valor - valorTaxado(valor));
  }
}
