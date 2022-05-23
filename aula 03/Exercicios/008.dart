// Desenvolva um programa que recebe os dados (1 – Verde, 2- Vermelho,
// 3- Amarelo) e (1 – Alagado, 2 – livre) e retorno se condutor de um veiculo
// pode passa pelo semáforo e seguir da via a sua frente.

import 'dart:io';

void main() {
  print("Escolha uma cor de acordo com seu número");
  print("1 - Verde");
  print("2 - Amarelo");
  print("3 - Vermelho");
  stdout.write("Escolha: ");
  int corEscolhida =
      int.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  print("Escolha o caminho de acordo com seu número");
  print("1 - Alagado");
  print("2 - Livre");
  stdout.write("Escolha: ");
  int caminhoEscolhido =
      int.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  if (corEscolhida == 1 && caminhoEscolhido == 2 ||
      corEscolhida == 2 && caminhoEscolhido == 2) {
    print('Pode passar pelo caminho escolhido');
  } else {
    print('Não pode passar pelo caminho escolhido');
  }
}
