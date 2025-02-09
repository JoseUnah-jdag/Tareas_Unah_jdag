/*
Crea un programa que devuelva una lista con todos los elementos únicos
de otra lista.
*/
void main() {
  List<dynamic> lista = [1, "a", 2, 1, "h", "a", 2, 7, 9, true, 9];
  List<dynamic> lista_unica = [];
  for (int i = 0; i < lista.length; i++) {
    (comprobar(lista_unica, lista[i])) ? lista_unica.add(lista[i]) : null;
  }
  print(lista_unica);
}

bool comprobar(List<dynamic> _lista1, dynamic dato) {
  bool unico = true;
  for (int i = 0; i < _lista1.length; i++) {
    if (_lista1[i] == dato) {
      unico = false;
      break;
    }
  }
  return unico;
}
