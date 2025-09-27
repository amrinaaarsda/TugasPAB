class kalkulator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (a == 0 || b == 0) {
      throw Exception('angka tidak boleh ada nol !');
    } else {
      return a / b;
    }
  }
}
