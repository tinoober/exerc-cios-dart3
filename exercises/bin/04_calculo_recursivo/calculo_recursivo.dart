int somaRecursiva(int numero) {
  //parâmetro de excessao
  if (numero == 0) {
    //se o numero for zero retorna que a soma é zero
    return 0;
  }
  //se o numero for maior que 0 executar até a iteração acabar
  return numero + somaRecursiva(numero - 1);
}

void main() {
  var numero = 23;
  print("Todos valores somados de 0 até $numero: ${somaRecursiva(numero)}");
}
