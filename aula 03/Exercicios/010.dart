// Desenvolva um programa que recebe 8 numeros aleatórios, e retorne se existe
// somente um dos numero desta sequencia (58,13,2,9,4), caso tenha somente um
// retorne true;

import 'dart:io';
import 'dart:math';

void main() {
  List<int> numero = [];
  int i = 0;
  while (numero.length < 8) {
    stdout.write("Digite um número: ");
    int numero[i] = int.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
    i+=1;
  }

  List numeros = [58, 13, 2, 9, 4];

  for (var i = 0; i <= 7; i++) {
    if (numeros[i] == numero[i]) {
      print("Você digitou um número igual ao da lista!");
    } else if {
      print("Você não digitou nenhum número igual ao da lista");
    } else {
      print('Erro inesperado');
    }
  }
}
