void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    print('Titular: ${conta.titular}\nSaldo: ${conta.saldo}\n');
  }

  contaRoberta.saldo = 5000;

  print(contaRoberta.titular);
  print(contaRoberta.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}
