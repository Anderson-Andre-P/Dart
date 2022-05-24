// De acordo com a Ideia de herança, crie 2 Classe que herdarão de Carro.
import 'dart:io';

abstract class Veiculo {
  int numeroDePortas();
}

class Carro extends Veiculo {
  // Variáveis
  String marca;
  String nome;
  int ano;
  String cor;
  double preco;
  // int numero;

  // Construtor
  Carro(this.marca, this.nome, this.ano, this.cor, this.preco);

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
}

void main() {
  Carro c1 = new Carro('Fiat', 'Toro', 2017, 'branca', 99.999);
  c1.ligarVeiculo();
  c1.desligarVeiculo();
  c1.numeroDePortas();
}
