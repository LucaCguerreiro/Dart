import 'dart:io';

void main() {
  String nome;
  String sexo;
  double peso;
  double pesoMaximoFeminino = 0;
  String nomePesoMaximoFeminino = "";
  int totalRecemNascidos = 0;
  int totalBaixoPeso = 0;
  int totalPesoNormal = 0;
  int totalSobrepeso = 0;
  int totalObesidade = 0;

  while (true) {
    print("Digite o nome do recém-nascido (ou FIM para encerrar): ");
    nome = stdin.readLineSync()!;
    if (nome.toUpperCase() == "FIM") break;

    print("Digite o sexo do recém-nascido (M ou F): ");
    sexo = stdin.readLineSync()!;

    print("Digite o peso do recém-nascido (em kg): ");
    peso = double.parse(stdin.readLineSync()!);

    // Imprime informações sobre o recém-nascido
    print("Nome: $nome");
    print("Sexo: $sexo");
    if (peso < 2.5) {
      print("Classificação: Baixo peso");
      totalBaixoPeso++;
    } else if (peso >= 2.5 && peso < 4) {
      print("Classificação: Peso normal");
      totalPesoNormal++;
    } else if (peso >= 4 && peso < 5) {
      print("Classificação: Sobrepeso");
      totalSobrepeso++;
    } else {
      print("Classificação: Obesidade");
      totalObesidade++;
    }
    print("");

    // Encontra o nome e peso do recém-nascido feminino com o maior peso
    if (sexo == "F" && peso > pesoMaximoFeminino) {
      pesoMaximoFeminino = peso;
      nomePesoMaximoFeminino = nome;
    }

    // Incrementa o total de recém-nascidos
    totalRecemNascidos++;
  }

  // Imprime o nome do recém-nascido feminino com o maior peso
  print(
      "O recém-nascido do sexo feminino com o maior peso é: $nomePesoMaximoFeminino");

  // Calcula o percentual de recém-nascidos em cada classificação de peso
  double percentualBaixoPeso = (totalBaixoPeso / totalRecemNascidos) * 100;
  double percentualPesoNormal = (totalPesoNormal / totalRecemNascidos) * 100;
  double percentualSobrepeso = (totalSobrepeso / totalRecemNascidos) * 100;
  double percentualObesidade = (totalObesidade / totalRecemNascidos) * 100;

  // Imprime o percentual de recém-nascidos em cada classificação de peso
  print("Percentual de recém-nascidos em cada classificação de peso:");
  print("Baixo peso: ${percentualBaixoPeso.toStringAsFixed(2)}%");
  print("Peso normal: ${percentualPesoNormal.toStringAsFixed(2)}%");
  print("Sobrepeso: ${percentualSobrepeso.toStringAsFixed(2)}%");
  print("Obesidade: ${percentualObesidade.toStringAsFixed(2)}%");
}
