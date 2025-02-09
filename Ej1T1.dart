//PRIMEROS 15 NUMEROS DE LA SUCESION DE FIBONACCI
void main() {
  List<int> sucesion = [];
  int sumatoria = 1;
  int anterior = 0;
  for (int i = 1; i < 15; i++) {
    if (i == 1) {
      sucesion.add(0);
      sucesion.add(1);
    } else {
      sumatoria = sumatoria + anterior;
      anterior = sumatoria - anterior;
      sucesion.add(sumatoria);
    }
  }
  print(sucesion);
}
