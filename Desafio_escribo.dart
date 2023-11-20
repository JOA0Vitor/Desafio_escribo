import 'dart:io';

int? validarEntrada() {
  stdout.write("Digite um número inteiro e positivo: ");
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Entrada inválida.");
    return null;
  }

  try {
    int numero = int.parse(input);

    if (numero < 0 || numero % 1 != 0) {
      print("Digite um número inteiro e positivo.");
      return null;
    }

    return numero;
  } catch (e) {
    print("Entrada inválida. Digite um número inteiro e positivo.");
    return null;
  }
}

void calcularSomatorioDivisiveis() {
  int? numero = validarEntrada();

  if (numero == null) {
    return;
  }

  int soma = 0;
  List<int> numerosDivisiveis = [];

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
      numerosDivisiveis.add(i);
    }
  }

  print("Resultado final: $soma");
  print("Números divisíveis por 3 ou 5: $numerosDivisiveis");
}

void main() {
  calcularSomatorioDivisiveis();
}
