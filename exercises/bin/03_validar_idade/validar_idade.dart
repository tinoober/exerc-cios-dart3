String validaIdade(String nome, String nasc) {
  //cria uma string a partir da data de nascimento
  List<String> datasSeparadas = List.from(nasc.split("/"));

  //separando o dia
  int dia = int.parse(datasSeparadas[0]);

  //separando o mês
  int mes = int.parse(datasSeparadas[1]);
  //separando o ano
  int ano = int.parse(datasSeparadas[2]);

  int verificaIdade = DateTime.now().year - ano;

  int idade = 0;

  if (mes > DateTime.now().month) {
    idade = verificaIdade - 1;
  } else if (mes == DateTime.now().month) {
    if (dia > DateTime.now().day) {
      idade = verificaIdade - 1;
    } else {
      idade = verificaIdade;
    }
  } else {
    idade = verificaIdade;
  }

  String podeDirigir = (idade >= 18) ? "Pode Dirigir!" : "Não pode dirigir";

  return "Nome:$nome\nIdade:$idade\n$podeDirigir";
}

void main() {
  print(validaIdade("everton", "30/12/2018"));
}
