// Desenvolva um programa que recebe 8 numeros aleatórios, e retorne se existe
// somente um dos numero desta sequencia (58,13,2,9,4), caso tenha somente um
// retorne true;

import 'dart:io';
import 'dart:math';

void main() {
  var numeros = [];
  for (var i = 0; i <= 7; i++) {
    numeros[i] = new Random();
  }
  print("${numeros}");
}
