// Faça um programa que receba o raio de uma esfera, calcule e mostre:
// o comprimento de sua circunferência; sabe que C = 2 * π * R
// a medida de sua área; sabe-se que A = π * R²
// o seu volume; sabe que V = (3/4) * π * R³

import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite o raio da esfera: ");
  double raio = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double circunferencia = 2 * pi * raio;
  double area = pi * pow(raio, 2);
  double volume = (3 / 4) * pi * pow(raio, 3);

  print("A circunferência da esfera é igual a ${circunferencia.toStringAsFixed(2)}");
  print("A área da esfera é igual a ${area.toStringAsFixed(2)}");
  print("O volume da esfera é igual a ${volume.toStringAsFixed(2)}");
}