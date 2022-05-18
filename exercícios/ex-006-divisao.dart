// Faça um programa que receba dois números, calcule e mostra a divisão do primeiro pelo segundo. Sabe-se que o segundo número não pode ser zero, portanto, não é necessário se preocupar com validações
import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  double num1 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
  stdout.write("Digite outro número: ");
  double num2 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (num2 == 0) {
    print("Impossível dividir por zero!");
    return;
  } else {
    double divisao = num1 / num2;
    print("${num1} / ${num2} = ${divisao.toStringAsFixed(2)}");
  }

}
