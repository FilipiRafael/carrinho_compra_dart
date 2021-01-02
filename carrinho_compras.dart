import 'dart:io';

List<String> produtos = [];

void main() {

  bool condicao = true;
  while(condicao) {

    print('==== Adicione um produto ====');
    String text = stdin.readLineSync();
    if(text == 'sair') {
      print('==== Programa finaizado! ====');
      condicao = false;
    }
    else if(text == 'imprimir') {
      imprimir_compras();
    }
    else if(text == 'remover') {
      remover();
    }
    else{
      print('Produto $text adicionado com sucesso!');
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}

imprimir_compras() {
  for (int item = 0; item < produtos.length; item++) {
        print('ITEM $item - ${produtos[item]}');
      }
}

imprimir_remover() {
  for (int item = 0; item < produtos.length; item++) {
        print('Indíce $item - ${produtos[item]}');
  }
}

remover() {
  print('Qual item deseja remover (Digite pelo índice): ');
      imprimir_remover();
      print('\nDigite abaixo: ');
      int indice = int.parse(stdin.readLineSync());
      print('==== Produto ${produtos[indice]} removido com sucesso! ====');
      produtos.removeAt(indice);
}