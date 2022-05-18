import 'dart:io';

void main() {
  List<String> item = <String>[];
  getEscolha(item);
}

String lista () {
    stdout.write("Digite o que você quer inserir na lista: ");
    String item = stdin.readLineSync()!;
    return item;
  }

int options(int escolha, List<String> item) {
  if (escolha == 1) {
    item.add(lista());
    getEscolha(item);
  } else if (escolha == 2) {
    item.forEach((value) {
      print(value);
    });
    getEscolha(item);
  } else if (escolha == 3) {
    print("Você parou a execução do programa.");
  } else {
    print("A opção que você digitou é inválida, escolha um número entre 1 e 3!");
    stdout.write("Digite a esolha: ");
    int escolha = int.parse(stdin.readLineSync()!);
  }
  return 0;
}

void getEscolha(item) {
  print("Escolha um número para o que você quer fazer:");
  print("1 - Adicionar itens na lista");
  print("2 - Ver itens na lista");
  print("3 - Encerrar execução do programa");
  stdout.write("Digite a esolha: ");
  int escolha = int.parse(stdin.readLineSync()!);
  options(escolha, item);
}
