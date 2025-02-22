void main() {
  List<Empleado> empleados = [
    Empleado("jefferson troches", "programador", 3300),
    Empleado("dilcia lopez", "Diseñadora", 2800),
    Empleado("enrry gonzales", "Gerente", 4000),
  ];

  print("Salario total: \$${calcularSalarioTotal(empleados)}");
  print("Salario promedio: \$${calcularSalarioPromedio(empleados)}");
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (var empleado in empleados) {
    total += empleado.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calcularSalarioTotal(empleados) / empleados.length;
}
