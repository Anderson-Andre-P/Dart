// Desenvolver um programa que calcule o IMC de uma pessoa, e retorne o nível
// de obesidade dessa pessoa.

import 'dart:io';

void main() {
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("${nome} digite o seu peso: ");
  double peso =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  stdout.write("Digite sua altura ${nome}: ");
  double altura =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double imc = peso / (altura * altura);

  print("Seu imc é ${imc.toStringAsFixed(2)}!");

  if (imc < 16) {
    print("Magreza grave");
  } else if (imc >= 16 && imc < 17) {
    print("Magreza moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade grau I");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade grau II (Severa)");
  } else if (imc >= 40) {
    print("Obesidade grau III (Mórbida)");
  } else {
    print("Erro inesperado");
  }
}
