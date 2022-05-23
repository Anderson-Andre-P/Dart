// Desenvolva o programa que receba uma nota e diga se o Aluno está
// (maior > 7 “Aprovado”, igual a 5 “Em Recuperação”, menor que 5 “Reprovado”).

import 'dart:io';

void main() {
  stdout.write("Digite sua nota: ");
  int nota = int.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  if (nota > 7) {
    print("Aprovado");
  } else if (nota == 5) {
    print("De recuperação");
  } else if (nota < 5) {
    print("Reprovado");
  } else {
    print("Nota inserida inválida");
  }
}
