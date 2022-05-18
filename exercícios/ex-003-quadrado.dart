// Faça um programa que calcule e mostre a área de um quadrado.
// Sabe-se que: Área = lado * lado
import 'dart:io';
void main() {
  stdout.write("Digite o tamanho do lado do quadrado: ");
  double lado = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double area = lado * lado;

  print("A área do quadrado é de ${area.toStringAsFixed(2)} unidades quadradas");
}
