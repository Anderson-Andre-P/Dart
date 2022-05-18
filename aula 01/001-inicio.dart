void main() {
  String name = 'Anderson';
  int inteiro = 10;
  double fracionado = 9.9;
  num numero = 1;
  bool boolean = true;
  List<String> lista = ["Feijão", "Macarrão"];
  Map<int, String> map = {1:"Um", 2:"Dois"};
  var title = "Título";
  dynamic subtitle = "Sub-título";

/*
  String? animal;
  getAnimal(animal!);
*/

  if(true) {
    print("Ola");
  } else {
    print("Tchau");
  }

  switch(numero) {
    case 1:
      print("Ola");
      break;
    default:
      print("Default");
  }
}
/*
void getAnimal(String names) {
  print(names);
}
*/