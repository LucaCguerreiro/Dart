import 'dart:io';

void main() {
  String matricula, nome, sexo;
  double nota1, nota2, nota3, media;
  int faltas, countAprovados = 0, countAlunos = 0;
  double maiorMediaMasc = 0, maiorMediaFem = 0;
  String matriculaMaiorMediaMasc, matriculaMaiorMediaFem;
  double somaNotasFem = 0;

  do {
    // Lê dados do aluno
    print("Digite a matrícula do aluno (ou 00000 para sair):");
    matricula = stdin.readLineSync()!;
    if (matricula == '00000') {
      break;
    }
    print("Digite o nome do aluno:");
    nome = stdin.readLineSync()!;
    print("Digite o sexo do aluno (M ou F):");
    sexo = stdin.readLineSync()!;
    print("Digite a primeira nota do aluno:");
    nota1 = double.parse(stdin.readLineSync()!);
    print("Digite a segunda nota do aluno:");
    nota2 = double.parse(stdin.readLineSync()!);
    print("Digite a terceira nota do aluno:");
    nota3 = double.parse(stdin.readLineSync()!);
    print("Digite o número de faltas do aluno:");
    faltas = int.parse(stdin.readLineSync()!);

    // Calcula a média do aluno
    media = (nota1 + nota2 + nota3) / 3;

    // Verifica se o aluno foi aprovado
    if (media >= 7.0 && faltas <= 18) {
      countAprovados++;
    }

    // Atualiza dados do aluno com maior média (masculino ou feminino)
    if (sexo == 'M' && media > maiorMediaMasc && media >= 7.0 && faltas <= 18) {
      maiorMediaMasc = media;
      matriculaMaiorMediaMasc = matricula;
    } else if (sexo == 'F' &&
        media > maiorMediaFem &&
        media >= 7.0 &&
        faltas <= 18) {
      maiorMediaFem = media;
      matriculaMaiorMediaFem = matricula;
    }

    // Atualiza a soma das notas das alunas
    if (sexo == 'F') {
      somaNotasFem += media;
    }

    countAlunos++;
  } while (matricula != '00000');

  // Imprime resultados
  double mediaTurma = (somaNotasFem / (countAlunos - countAprovados));
  double percentualAprovados = (countAprovados / countAlunos) * 100;
  print("Média da turma: $mediaTurma");
  print("Percentual de alunos aprovados: $percentualAprovados%");
  print(
      "Matrícula do aluno do sexo masculino com maior média e aprovado: $matriculaMaiorMediaMasc");
  print(
      "Matrícula do aluno do sexo feminino com maior média e aprovado: $matriculaMaiorMediaFem");
  print("Média das alunas: ${(somaNotasFem / (countAlunos - countAprovados))}");
}
