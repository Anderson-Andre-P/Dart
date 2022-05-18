import 'dart:io';

import '002-funcao-1.dart';

void operation(int option, List<String> list) {
  // while (option != 4) {
    switch (option) {
      case 1:
        addItem(list);
        break;
      case 2:
        removeItem(list);
        break;
      case 3:
        viewList(list);
        break;
      case 4:
        break;
      default:
        exectionMenu(list);
    // }
    // option = 4;
    // getMenu().then((option) {
    //   operation(option, list);
    // });
  }
}

void exectionMenu(List<String> list) {
  getMenu().then((option) {
    operation(option, list);
  });
}

void addItem(List<String> list) {
  stdout.write("Digite um item para inserir na lista: \n");
  String item = stdin.readLineSync()!;
  list.add(item);
  exectionMenu(list);
}

void removeItem(List<String> list) {
  stdout.write("Digite um item para remover na lista: \n");
  String item = stdin.readLineSync()!;
  list.remove(item);
  exectionMenu(list);
}

void viewList(List<String> list) {
  print("-------------------");
  list.forEach((element) => print(element));
  exectionMenu(list);
}
