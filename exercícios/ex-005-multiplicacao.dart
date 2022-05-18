// Faça um programa que receba três números, calcule e mostre a multiplicação desses números
import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  double num1 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
  stdout.write("Digite outro número: ");
  double num2 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
  stdout.write("Digite mais um número: ");
  double num3 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double multiplicacao = num1 * num2 * num3;

  print("${num1} x ${num2} x ${num3} = ${multiplicacao}");
}