import 'dart:io';

Future<int> getMenu() async {
  // while(notas < 12){
    print("Opções disponíveis:");
    stdout.write("Digite sua nota: ");
    return int.tryParse(stdin.readLineSync()!) ?? 0;
  // }
}