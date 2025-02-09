/*
Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. 
Implemente métodos para:
a.Depositar dinero.
b.Retirar dinero (asegurándote de que el saldo no sea negativo).
c.Consultar el saldo.
*/
void main() {
  CuentaBancaria cuenta1 =
      CuentaBancaria(titular: "Carlos Josue Cantillanos Ramirez", saldo: 50000);

  cuenta1.depositar_dinero(20000);
  cuenta1.retirar_dinero(5000);
  cuenta1.consultar_saldo();
}

class CuentaBancaria {
  final String titular;
  double saldo = 0;

  CuentaBancaria({
    required this.titular,
    required this.saldo,
  });

  void depositar_dinero(int dinero) {
    saldo = saldo + dinero;
    print("Se han depositado $dinero");
  }

  void retirar_dinero(int dinero) {
    if (saldo - dinero < 0) {
      print("El saldo disponible es insificiente");
    } else {
      saldo = saldo - dinero;
      print("Se han retirado $dinero");
    }
  }

  void consultar_saldo() => print("El saldo total es $saldo");
}
