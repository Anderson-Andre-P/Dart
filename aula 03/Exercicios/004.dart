// Desenvolver um programa que receber o total de litros do tranque do carro e
// o preço da gasolina e retorne o valor que será gasto para encher o tanque.

import 'dart:io';

void main() {
  stdout.write("Digite o preço do combustível: ");
  double precoCombustivel =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite a capacidade do tanque: ");
  double capacidade =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double totalGasto = capacidade * precoCombustivel;

  print("Você irá gastar R\$${totalGasto} para encher o tanque do seu carro");
}
