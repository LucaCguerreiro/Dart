void main() {
  for (int i = 10; i < 100; i++) {
    // Loop para os dois primeiros dígitos
    for (int j = 10; j < 100; j++) {
      // Loop para os dois últimos dígitos
      int num = i * 100 + j; // Combinação dos dígitos para formar o número
      int soma = i + j; // Cálculo da soma dos dois dígitos
      int quadrado = soma * soma; // Cálculo do quadrado da soma
      if (num == quadrado) {
        // Verificação da característica
        print(num); // Impressão do número
      }
    }
  }
}
