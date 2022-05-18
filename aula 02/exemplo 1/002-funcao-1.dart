
import 'dart:io';

Future<int> getMenu() async {
  print("-------------------");
  print("Opções disponíveis:");
  print("1 - Adicionar item | 2 - Remover item | 3 - Visualizar lista | 4 - Sair");
  stdout.write("Digite sua opção: ");
  return int.tryParse(stdin.readLineSync()!) ?? 0;
  // print(option);
}