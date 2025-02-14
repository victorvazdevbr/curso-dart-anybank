import 'package:anybank/conta.dart';
import 'package:anybank/conta_corrente.dart';
import 'package:anybank/conta_poupanca.dart';
import 'package:anybank/conta_salario.dart';

void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);
  ContaSalario contaCatarina =
      ContaSalario('Catarina', 5000, 'Empresa X', '101010101000110');

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  contaRoberta.setSaldo(5000);
  contaMatheus.receber(500);
  contaMatheus.enviar(200);

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();

  contaCatarina.imprimeSaldo();
  contaCatarina.depositar(15000);
}
