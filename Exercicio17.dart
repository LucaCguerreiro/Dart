void main() {
  List<int> vetor1 = [2, 4, 6];
  List<int> vetor2 = [1, 3, 5];
  List<int> vetor3 = somaVetores(vetor1, vetor2);
  int soma = calcularSoma(vetor3);

  print("Vetor 1: $vetor1");
  print("Vetor 2: $vetor2");
  print("Vetor 3 (soma dos vetores 1 e 2): $vetor3");
  print("Soma dos elementos do vetor 3: $soma");
}

List<int> somaVetores(List<int> vetor1, List<int> vetor2) {
  List<int> resultado = [];

  for (int i = 0; i < vetor1.length; i++) {
    resultado.add(vetor1[i] + vetor2[i]);
  }

  return resultado;
}

int calcularSoma(List<int> vetor) {
  int soma = 0;

  for (int i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }

  return soma;
}
