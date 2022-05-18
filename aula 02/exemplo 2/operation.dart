import 'dart:io';

import 'menu.dart';

void operation(int option, List<String> list) {
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
      executionMenu(list);
  }
}

void listaAluno() {
  int aluno = 1;  
  Map<String, dynamic> lista = {};

  while (aluno <= 3) {
    stdout.write('Digite o nome do aluno \n');

    String item = stdin.readLineSync()!;

    List<double> listNota = menuNota();

    lista[item] = listNota;

    aluno++;
  }

  lista.forEach((key, value) {
    List<double> list = value as List<double>;

    var media = calculoMedia(list);

    print('$key sua media de nota é $media');
  });
}

List<double> menuNota() {
  List<double> listNota = <double>[];
  int idNota = 1;
  while (idNota <= 6) {
    stdout.write('Digite a $idNota Nota \n');

    double item = double.tryParse(stdin.readLineSync()!) ?? 0;

    listNota.add(item);

    idNota++;
  }
  return listNota;
}

double calculoMedia(List<double> listNota) {
  double media = 0;
  listNota.forEach((nota) => media += nota);
  
  return media / 6;
}

void executionMenu(List<String> list) {
  var option = getMenu();
  operation(option, list);
}

void addItem(List<String> list) {
  stdout.write('Digite o Itens para inserir na Lista \n');

  String item = stdin.readLineSync()!;

  list.add(item);

  executionMenu(list);
}

void removeItem(List<String> list) {
  stdout.write('Digite o Itens para inserir na Lista \n');

  String item = stdin.readLineSync()!;

  list.remove(item);

  executionMenu(list);
}

void viewList(List<String> list) {
  print("----------------------------------");
  list.forEach((element) => print(element));

  executionMenu(list);
}
