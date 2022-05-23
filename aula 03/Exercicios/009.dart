// Desenvolva um programa que receba um valor e verifique qual o tipo do valor
// informado. (String, num, int, double, list, map)

import 'dart:io';

void main() {
  stdout.write("Digite um valor: ");
  String valor = stdin.readLineSync()!;

  if (double.tryParse(valor)!) {
    print("Você digitou um número Double");
  } else if (int.tryParse(valor)!) {
    print("Você digitou um número Int");
  } else {
    print("Você digitou uma String");
  }
}
