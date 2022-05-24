class Pessoa {
  String nome;
  String sexo;
  int idade;

  // Pessoa(n, s, i) {
  //   nome = n;
  //   sexo = s;
  //   idade = i;
  // }

  Pessoa(this.nome, this.sexo, this.idade);

  static String nome2 = 'Anderson';

  String dormir() {
    return "Está dormindo";
  }

  void correr() => print("Foi correr");
}

class Aluno extends Pessoa {
  Aluno({required super.nome, required super.idade});
}

void main() {
  print(Pessoa.nome2);

  Pessoa pessoa = Pessoa('Anderson', 'Masculino', 23);
  // Pessoa pessoa2 = Pessoa(idade: 23, sexo: 'Masculino', nome: 'André');
  print(pessoa.nome);
  print(pessoa.dormir());

  Aluno aluno = Aluno(nome: 'André', idade: 23);
}
