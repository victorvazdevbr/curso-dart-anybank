import 'package:anybank/conta_corrente.dart';
import 'package:anybank/conta_empresa.dart';
import 'package:anybank/conta_investimento.dart';
import 'package:anybank/conta_poupanca.dart';
import 'package:anybank/conta_salario.dart';

void main() {
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);
  ContaSalario contaCatarina =
      ContaSalario('Catarina', 5000, 'Empresa X', '101010101000110');
  ContaEmpresa contaMatheus = ContaEmpresa('Matheus', 2000);
  ContaInvestimento contaRoberta = ContaInvestimento('Roberta', 2000);

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();

  contaCatarina.imprimeSaldo();
  contaCatarina.depositar(15000);

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);
}
