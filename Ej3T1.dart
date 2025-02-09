/*
Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. 
Luego cree una lista de “empleados” y una función que calcule el salario 
total de todos los empleados y otra que calcule el salario promedio.
*/
void main() {
  List<Empleado> lista = [];

  lista.add(Empleado(
    nombre: "Mario",
    puesto: "Coordinador",
    salario: 20000,
  ));

  lista.add(Empleado(
    nombre: "Pedro",
    puesto: "Gerente",
    salario: 10000,
  ));

  lista.add(Empleado(
    nombre: "Carlos",
    puesto: "Contador",
    salario: 25000,
  ));

  lista.add(Empleado(
    nombre: "Juan",
    puesto: "Supervisor",
    salario: 30000,
  ));
  print("La suma de los salarios es ${salario_total(lista)}");
  print("El promedio de los salarios es ${promedio_salario(lista)}");
}

class Empleado {
  final String nombre;
  String puesto;
  int salario;

  Empleado({
    required this.nombre,
    required this.puesto,
    required this.salario,
  });
}

int salario_total(List<Empleado> empleados) {
  int salario_t = 0;
  for (int i = 0; i < empleados.length; i++) {
    salario_t = salario_t + empleados[i].salario;
  }
  return salario_t;
}

double promedio_salario(List<Empleado> empleados) {
  int suma_salarios = 0;
  double salario_prom = 0;
  for (int i = 0; i < empleados.length; i++) {
    suma_salarios = suma_salarios + empleados[i].salario;
  }
  salario_prom = suma_salarios / empleados.length;
  return salario_prom;
}
