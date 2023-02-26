import 'dart:io';

void main() {
  // Variáveis para armazenar os contadores e valores a serem calculados
  int qtdHomens = 0;
  int qtdMulheres = 0;
  int qtdHomensExp = 0;
  int somaIdadeHomensExp = 0;
  int qtdHomensMais45 = 0;
  int qtdMulheresAbaixo30Exp = 0;
  int menorIdadeExp = 999;
  String nomeMenorIdadeExp = '';

  // Loop para ler os dados dos candidatos
  while (true) {
    // Leitura dos dados do candidato
    stdout.write("Nome do candidato: ");
    String nome = stdin.readLineSync()!;
    if (nome == "FIM") break; // Encerra o loop se o flag for digitado

    stdout.write("Sexo (M/F): ");
    String sexo = stdin.readLineSync()!;

    stdout.write("Idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("Experiência no serviço (S/N): ");
    String exp = stdin.readLineSync()!;

    // Verifica o sexo e incrementa o contador correspondente
    if (sexo == "M") {
      qtdHomens++;
      if (exp == "S") {
        qtdHomensExp++;
        somaIdadeHomensExp += idade;
        if (idade > 45) qtdHomensMais45++;
      }
    } else if (sexo == "F") {
      qtdMulheres++;
      if (exp == "S" && idade < 30) qtdMulheresAbaixo30Exp++;
      if (exp == "S" && idade < menorIdadeExp) {
        menorIdadeExp = idade;
        nomeMenorIdadeExp = nome;
      }
    }
  }

  // Cálculo das médias e porcentagem
  double mediaIdadeHomensExp = somaIdadeHomensExp / qtdHomensExp;
  double percHomensMais45 = qtdHomensMais45 / qtdHomens * 100;

  // Impressão dos resultados
  print("a) Quantidade de candidatos por sexo:");
  print("   Homens: $qtdHomens");
  print("   Mulheres: $qtdMulheres");

  print(
      "b) Média de idade dos homens com experiência no serviço: $mediaIdadeHomensExp");

  print("c) Porcentagem de homens com mais de 45 anos: $percHomensMais45%");

  print(
      "d) Quantidade de mulheres com idade inferior a 30 anos e com experiência no serviço: $qtdMulheresAbaixo30Exp");

  print(
      "e) Nome da candidata mais nova com experiência no serviço: $nomeMenorIdadeExp");
}
