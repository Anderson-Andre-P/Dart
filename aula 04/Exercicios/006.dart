// Reescreva o método ToString() da classe Pai para mostrar todos os atributos.

import 'dart:io';

abstract class Veiculo {
  // Variáveis
  String marca;
  String nome;
  int ano;
  String cor;
  double _preco;
  String _chassi;

  void ligarVeiculo();
  void desligarVeiculo();
  int numeroDePortas();
  void numeroDoChassi();
  int numeroDeAssentos();

  Veiculo(this.marca, this.nome, this.ano, this.cor, this._preco, this._chassi);

  void todosOsAtributos() {
    print("Marca: ${marca}");
    print("Nome: ${nome}");
    print("Ano: ${ano}");
    print("Cor: ${cor}");
    print("Preço: ${_preco}");
    print("Chassi: ${_chassi}");
  }
}

class Moto extends Veiculo {
  // Getters e Setters para o chassi da moto
  String get chassi {
    return _chassi;
  }

  set chassi(String chassi) {
    this._chassi = chassi;
  }

  // Getters e Setters para o preço da moto
  double get preco {
    return _preco;
  }

  set preco(double preco) {
    this._preco = preco;
  }

  Moto(super.marca, super.nome, super.ano, super.cor, super._preco,
      super._chassi);

  // Método que faz a moto ligar
  @override
  void ligarVeiculo() => print("Você ligou o ${marca} ${nome}!");

  // Método que faz a moto desligar
  @override
  void desligarVeiculo() => print("Você desligou o ${marca} ${nome}!");

  // Método que pede o número de assentos da moto
  @override
  int numeroDeAssentos() {
    stdout.write("Digite o número de assentos da sua moto: ");
    int numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("Sua moto tem ${numero} assentos.");
    return numero;
  }

  @override
  int numeroDePortas() => 0;

  // Método que informa o chassi da moto
  @override
  void numeroDoChassi() => print("O chassi da sua moto é: ${_chassi}.");
}

class Carro extends Veiculo {
  // Getters e Setters para o chassi do carro
  String get chassi {
    return _chassi;
  }

  set chassi(String chassi) {
    this._chassi = chassi;
  }

  // Getters e Setters para o preço do carro
  double get preco {
    return _preco;
  }

  set preco(double preco) {
    this._preco = preco;
  }

  // Construtor
  Carro(super.marca, super.nome, super.ano, super.cor, super._preco,
      super._chassi);

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

  @override
  int numeroDeAssentos() => 0;

  // Método que informa o chassi do veículo
  @override
  void numeroDoChassi() => print("O chassi do carro é: ${_chassi}.");
}

void main() {
  // Criando um carro
  Carro c1 = new Carro('Fiat', 'Toro', 2017, 'branca', 99999, 'asj-dsd-akl');
  Moto m1 = new Moto("Honda", "CG-150", 2019, "Preta", 12999, "asf-res-rtg");

  c1.ligarVeiculo(); // Liga o carro
  c1.desligarVeiculo(); // Desliga o carro
  c1.numeroDePortas(); // Pede o número de portas do carro
  c1.numeroDoChassi(); // Mostra o chassi do carro
  c1.todosOsAtributos(); // Mostrando todos os atributos do carro

  print("----------------------------------------------------");

  m1.ligarVeiculo(); // Liga a moto
  m1.desligarVeiculo(); // Desliga a moto
  m1.numeroDeAssentos(); // Pede o número de assentos da moto
  m1.numeroDoChassi(); // Mostra o chassi da moto
  m1.todosOsAtributos(); // Mostrando todos os atributos da moto
}
