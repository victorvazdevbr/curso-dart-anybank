import 'package:anybank/conta.dart';

class ContaSalario extends Conta {
  String nomeEmpregador;
  String cnpjEmpregador;

  ContaSalario(
      super.titular, super.saldo, this.nomeEmpregador, this.cnpjEmpregador);

  void depositar(double valor) {
    receber(valor);
    print(
        'O salário da $nomeEmpregador, de CNPJ $cnpjEmpregador no valor de R\$ ${valor.toStringAsFixed(2)}, foi depositado.');
  }
}
