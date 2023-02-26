import 'dart:io';

void main() {
  List<double> listaDePesos = lerPesos();
  bool continuarPesquisa = true;

  while (continuarPesquisa) {
    print('Digite o intervalo de pesos que deseja pesquisar:');
    double inicioIntervalo = double.parse(stdin.readLineSync()!);
    double fimIntervalo = double.parse(stdin.readLineSync()!);

    List<int> indicesDosBois =
        pesquisarBois(listaDePesos, inicioIntervalo, fimIntervalo);

    if (indicesDosBois.isEmpty) {
      print('Não há bois com peso no intervalo especificado.');
    } else {
      print('Bois com peso no intervalo especificado:');
      for (int i = 0; i < indicesDosBois.length; i++) {
        int indiceDoBoi = indicesDosBois[i];
        double pesoDoBoi = listaDePesos[indiceDoBoi];
        print('Boi ${indiceDoBoi + 1}: $pesoDoBoi kg');
      }
    }

    print('Deseja continuar pesquisando? (S/N)');
    String respostaUsuario = stdin.readLineSync()!;

    if (respostaUsuario.toUpperCase() == 'N') {
      continuarPesquisa = false;
    }
  }
}

List<double> lerPesos() {
  print('Digite o número de bois:');
  int quantidadeDeBois = int.parse(stdin.readLineSync()!);
  List<double> listaDePesos = [];

  for (int i = 1; i <= quantidadeDeBois; i++) {
    print('Digite o peso do boi $i:');
    double pesoDoBoi = double.parse(stdin.readLineSync()!);
    listaDePesos.add(pesoDoBoi);
  }

  return listaDePesos;
}

List<int> pesquisarBois(
    List<double> listaDePesos, double inicioIntervalo, double fimIntervalo) {
  List<int> indicesDosBois = [];

  for (int i = 0; i < listaDePesos.length; i++) {
    double pesoDoBoi = listaDePesos[i];

    if (pesoDoBoi >= inicioIntervalo && pesoDoBoi <= fimIntervalo) {
      indicesDosBois.add(i);
    }
  }

  return indicesDosBois;
}
