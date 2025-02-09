void main() {
  CuentaBancaria cuenta = CuentaBancaria("jefferson troches", 1000);

  cuenta.consultarSaldo();
  cuenta.depositar(500);
  cuenta.retirar(300);
  cuenta.retirar(1500);
  cuenta.consultarSaldo();
}

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito de \$$cantidad realizado. Nuevo saldo: \$$saldo');
    } else {
      print('La cantidad a depositar debe ser mayor a 0.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= saldo) {
      saldo -= cantidad;
      print('Retiro de \$$cantidad realizado. Nuevo saldo: \$$saldo');
    } else if (cantidad > saldo) {
      print('Fondos insuficientes. Saldo actual: \$$saldo');
    } else {
      print('La cantidad a retirar debe ser mayor a 0.');
    }
  }

  void consultarSaldo() {
    print('Saldo actual de $titular: \$$saldo');
  }
}
