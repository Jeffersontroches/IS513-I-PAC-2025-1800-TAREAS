void main() {
  List<int> fibonacci = generarFibonacci(15);
  print(fibonacci);
}

List<int> generarFibonacci(int n) {
  List<int> serie = [0, 1];
  for (int i = 2; i < n; i++) {
    serie.add(serie[i - 1] + serie[i - 2]);
  }
  return serie;
}
