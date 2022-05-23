// Desenvolver um programa que receba o valor do salário e calcule o valor do
// INSS mensal de 8% do valor desse salário.

import 'dart:io';

void main() {
  stdout.write("Digite o salário dos funcionários: ");
  double salario =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double inss = (8 / 100) * salario;

  print(
      "O valor da contribuição mensal do INSS para quem ganha R\$${salario} é de R\$${inss.toStringAsFixed(2)} por mês.");
}
