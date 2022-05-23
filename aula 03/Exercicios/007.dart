// Desenvolva um programa que receba o preço de um produto e retorne o preço de
// compra desse produto, sabendo que no valor de compra foi acrescentado 11%.

import 'dart:io';

void main() {
  stdout.write("Digite o preço do produto: ");
  double precoInicial =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double valorFinal = precoInicial + (precoInicial * (11 / 100));

  print("O valor final do produto é de R\$${valorFinal}.");
}
