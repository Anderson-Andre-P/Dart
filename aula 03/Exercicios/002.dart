// Desenvolver um programa que tire a media de 6 nota de um aluno.

import 'dart:io';

void main() {
  stdout.write("Digite a 1ª nota: ");
  double nota1 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
  stdout.write("Digite a 2ª nota: ");
  double nota2 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
  stdout.write("Digite a 3ª nota: ");
  double nota3 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
  stdout.write("Digite a 4ª nota: ");
  double nota4 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
  stdout.write("Digite a 5ª nota: ");
  double nota5 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;
  stdout.write("Digite a 6ª nota: ");
  double nota6 =
      double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double media = (nota1 + nota2 + nota3 + nota4 + nota5 + nota6) / 6;

  print("A média do aluno foi de ${media} pontos");
}
