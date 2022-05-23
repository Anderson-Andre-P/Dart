// Desenvolver um programa que receba o valor do salário de um funcionário e
// retorne o valor total que ele vai ganhar em um ano.

import 'dart:io';

void main() {
  stdout.write("Digite o salário dos funcionários: ");
  double salario =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double total = salario * 12;

  print("O salário anual dos funcionários é de R\$${total}.");
}
