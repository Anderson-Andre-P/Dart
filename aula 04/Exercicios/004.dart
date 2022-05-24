// Crie agora os métodos get e set para a variável chasse.

import 'dart:io';

abstract class Veiculo {
  int numeroDePortas();
  String _chassi;
  Veiculo(this._chassi);
}

class Carro extends Veiculo {
  // Variáveis
  String marca;
  String nome;
  int ano;
  String cor;
  double preco;

  // Getters e Setters
  String get chassi {
    return _chassi;
  }

  set chassi(String chassi) {
    this._chassi = chassi;
  }

  // Construtor
  Carro(this.marca, this.nome, this.ano, this.cor, this.preco, super._chassi);

  // Método que faz carro ligar
  void ligarVeiculo() {
    print("Você ligou o ${marca} ${nome}!");
  }

  // Método que faz o carro desligar
  void desligarVeiculo() {
    print("Você desligou o ${marca} ${nome}!");
  }

  int numeroDePortas() {
    stdout.write("Digite o número de portas do seu carro: ");
    int numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("O seu carro tem ${numero} portas.");
    return numero;
  }

  void numeroDoChassi() => print("O chassi do carro é: ${_chassi}.");
}

void main() {
  Carro c1 = new Carro('Fiat', 'Toro', 2017, 'branca', 99.999, 'asj-dsd-akl');
  c1.ligarVeiculo();
  c1.desligarVeiculo();
  c1.numeroDePortas();
  c1.numeroDoChassi();
}
