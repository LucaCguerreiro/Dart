import 'dart:io';
import 'dart:math';

void main() {
  int totalCandidatos = 0;
  int totalMasculino = 0;
  int totalFeminino = 0;
  int totalCC = 0;
  int totalSI = 0;
  int menorPontuacaoGeral = 5000;
  int maiorPontuacaoSI = 0;
  String codigoMaiorPontuacaoSI;
  String nomeMenorPontuacaoGeral;

  while (true) {
    print("Digite o código do candidato (FLAG'0000'): ");
    String codigo = stdin.readLineSync()!;
    if (codigo == "FLAG0000") {
      break;
    }

    print("Digite o curso do candidato (CC ou SI): ");
    String curso = stdin.readLineSync()!;

    print("Digite o nome do candidato: ");
    String nome = stdin.readLineSync()!;

    print("Digite o sexo do candidato (M ou F): ");
    String sexo = stdin.readLineSync()!;

    print("Digite a pontuação do candidato (0-5000): ");
    int pontuacao = int.parse(stdin.readLineSync()!);

    if (curso == "CC" && pontuacao > 2500) {
      print("Código: $codigo, Nome: $nome, Pontuação: $pontuacao");
    }

    if (sexo == "M" && pontuacao < menorPontuacaoGeral) {
      menorPontuacaoGeral = pontuacao;
      nomeMenorPontuacaoGeral = nome;
    }

    if (curso == "SI" && sexo == "M" && pontuacao > maiorPontuacaoSI) {
      maiorPontuacaoSI = pontuacao;
      codigoMaiorPontuacaoSI = codigo;
    }

    totalCandidatos++;
    if (sexo == "M") {
      totalMasculino++;
    } else {
      totalFeminino++;
    }
    if (curso == "CC") {
      totalCC++;
    } else {
      totalSI++;
    }
  }

  double percentualMasculino = totalMasculino / totalCandidatos * 100;
  double percentualFeminino = totalFeminino / totalCandidatos * 100;

  print(
      "Menor pontuação geral dos candidatos do sexo masculino: $nomeMenorPontuacaoGeral");
  print(
      "Código do candidato do sexo masculino com a maior pontuação para o curso de SI: $codigoMaiorPontuacaoSI");
  print(
      "Percentual geral de candidatos do sexo Masculino: ${percentualMasculino.toStringAsFixed(2)}%");
  print(
      "Percentual geral de candidatos do sexo Feminino: ${percentualFeminino.toStringAsFixed(2)}%");
}
