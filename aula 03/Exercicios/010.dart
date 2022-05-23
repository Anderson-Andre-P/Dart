// Desenvolva um programa que recebe 8 numeros aleatórios, e retorne se existe
// somente um dos numero desta sequencia (58,13,2,9,4), caso tenha somente um
// retorne true;

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Digite um número: ");
  double numero1 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero2 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero3 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero4 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero5 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero6 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero7 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite um número: ");
  double numero8 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  List numeros = [58, 13, 2, 9, 4];

  for (var i = 0; i <= 7; i++) {
    if (numeros[i] == numero1) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero2) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero3) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero4) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero5) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero6) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero7) {
      print("Você digitou um número igual ao da lista!");
    } else if (numeros[i] == numero8) {
      print("Você digitou um número igual ao da lista!");
    } else {
      print("Erro inesperado");
    }
  }
}
