//  Desenvolver um programa que receba o valor total dos ingredientes de um bolo
// e a quantidade de fatias que ele possui, ele deverá retornar o valor de cada
// fatia do bolo.

import 'dart:io';

void main() {
  stdout.write("Digite o valor do bolo: ");
  double valor =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite a quantidade de fatias que o bolo possui: ");
  int fatias = int.tryParse(stdin.readLineSync()!) ?? 0;

  double precoFatia = valor / fatias;

  print("Cada fatia de bolo custa R\$${precoFatia.toStringAsFixed(2)}");
}
