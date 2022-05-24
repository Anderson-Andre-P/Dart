// Aplique o princípio de polimorfismo nos métodos criados na classe pai.

import 'dart:io';

abstract class Veiculo {
  void ligarVeiculo();
  void desligarVeiculo();
  int numeroDePortas();
  void numeroDoChassi();
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
  @override
  void ligarVeiculo() => print("Você ligou o ${marca} ${nome}!");

  // Método que faz o carro desligar
  @override
  void desligarVeiculo() => print("Você desligou o ${marca} ${nome}!");

  // Método que pede o número de portas do veículo
  @override
  int numeroDePortas() {
    stdout.write("Digite o número de portas do seu carro: ");
    int numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("O seu carro tem ${numero} portas.");
    return numero;
  }

  // Método que informa o chassi do veículo
  @override
  void numeroDoChassi() => print("O chassi do carro é: ${_chassi}.");
}

void main() {
  // Criando um carro
  Carro c1 = new Carro('Fiat', 'Toro', 2017, 'branca', 99.999, 'asj-dsd-akl');
  c1.ligarVeiculo(); // Liga o veículo
  c1.desligarVeiculo(); // Desliga o veículo
  c1.numeroDePortas(); // Pede o número de portas do veículo
  c1.numeroDoChassi(); // Mostra o chassi do veículo
}
