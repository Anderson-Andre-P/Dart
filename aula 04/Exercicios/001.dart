// Crie um Classe Carro e defina 5 atributos e 2 métodos para ele
class Carro {
  // Variáveis
  String marca;
  String nome;
  int ano;
  String cor;
  double preco;

  // Construtor
  Carro(this.marca, this.nome, this.ano, this.cor, this.preco);

  // Método que faz carro ligar
  void ligarCarro() {
    print("Você ligou o ${marca} ${nome}!");
  }

  // Método que faz o carro desligar
  void desligarCarro() {
    print("Você desligou o ${marca} ${nome}!");
  }
}

void main() {
  Carro c1 = new Carro('Fiat', 'Toro', 2017, 'branca', 99.999);
  c1.ligarCarro();
  c1.desligarCarro();
}
