// Faça um programa que calcule e mostre a área de um trapézio.
// Sabe-se que: Área = ( ( base maior + base menor ) * altura ) / 2

import 'dart:io';

void main() {
  stdout.write("Digite o tamanho da base maior: ");
  double baseMaior = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
  stdout.write("Digite o tamanho da base menor: ");
  double baseMenor = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
  stdout.write("Digite a altura do trapézio: ");
  double altura = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double area = ((baseMaior + baseMenor) * altura) / 2;

  print("A área do trapézio é de ${area.toStringAsFixed(2)} unidades quadradas");
}