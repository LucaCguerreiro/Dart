import 'dart:io';

void main() {
  List<String> codigos = [];
  List<String> nomes = [];
  List<String> sexos = [];
  List<int> horasAula = [];

  stdout.write("Digite a quantidade de professores: ");
  int quantidadeProfessores = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < quantidadeProfessores; i++) {
    stdout.write("\nDigite o código do professor ${i + 1}: ");
    String codigo = stdin.readLineSync()!;
    codigos.add(codigo);

    stdout.write("Digite o nome do professor ${i + 1}: ");
    String nome = stdin.readLineSync()!;
    nomes.add(nome);

    stdout.write("Digite o sexo do professor ${i + 1} (M/F): ");
    String sexo = stdin.readLineSync()!;
    sexos.add(sexo);

    stdout.write(
        "Digite o número de horas de aula dadas pelo professor ${i + 1}: ");
    int horas = int.parse(stdin.readLineSync()!);
    horasAula.add(horas);
  }

  List<double> salariosBrutos = [];
  List<double> salariosLiquidos = [];

  for (int i = 0; i < quantidadeProfessores; i++) {
    double salarioBruto = horasAula[i] * 12.30;
    double salarioLiquido = salarioBruto * 0.8; // desconto de 20% para IR

    salariosBrutos.add(salarioBruto);
    salariosLiquidos.add(salarioLiquido);
  }

  print("\nListagem de professores:");
  for (int i = 0; i < quantidadeProfessores; i++) {
    print("Código: ${codigos[i]}");
    print("Nome: ${nomes[i]}");
    print("Salário bruto: R\$ ${salariosBrutos[i].toStringAsFixed(2)}");
    print("Salário líquido: R\$ ${salariosLiquidos[i].toStringAsFixed(2)}\n");
  }

  double somaSalariosM = 0;
  double somaSalariosF = 0;
  int quantidadeM = 0;
  int quantidadeF = 0;

  for (int i = 0; i < quantidadeProfessores; i++) {
    if (sexos[i] == "M") {
      somaSalariosM += salariosLiquidos[i];
      quantidadeM++;
    } else if (sexos[i] == "F") {
      somaSalariosF += salariosLiquidos[i];
      quantidadeF++;
    }
  }

  double mediaSalariosM = somaSalariosM / quantidadeM;
  double mediaSalariosF = somaSalariosF / quantidadeF;

  print(
      "Média dos salários líquidos dos professores homens: R\$ ${mediaSalariosM.toStringAsFixed(2)}");
  print(
      "Média dos salários líquidos das professoras mulheres: R\$ ${mediaSalariosF.toStringAsFixed(2)}");
}
