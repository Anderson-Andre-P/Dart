import 'dart:io';

int getMenu() {
  print("-----------------------------");
  print("Opções disponiveis: ");
  print("1 -> Adicionar Item | 2 -> Remover item | 3 -> Visualizar lista | 4 -> Exit");

  stdout.write('Digite sua opção? \n');

  int op = 0;

  op = int.tryParse(stdin.readLineSync()!) ?? 0;

  return op;
}
