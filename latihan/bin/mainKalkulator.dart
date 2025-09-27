import 'dart:io';
import 'classKalkulator.dart';

void main() {
  while (true) {
    try {
      var k = kalkulator();
      stdout.write('Masukkan Bilangan pertama : ');
      double bil1 = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan Bilangan kedua : ");
      double bil2 = double.parse(stdin.readLineSync()!);

      print('===== Kalkulator Saya =====');
      print('1. Penambahan (+)');
      print('2. pengurangan (-)');
      print('3. Perkalian (*)');
      print('4. Pembagian (/)');

      stdout.write('Pilih 1 - 4 : ');
      String? pilihan = stdin.readLineSync();

      double jawab;
      if (pilihan == '1') {
        jawab = k.tambah(bil1, bil2);
        print('Hasil Penjumlahan dari $bil1 + $bil2 = $jawab');
      } else if (pilihan == '2') {
        jawab = k.kurang(bil1, bil2);
        print('Hasil Pengurangan dari $bil1 - $bil2 = $jawab');
      } else if (pilihan == '3') {
        jawab = k.kali(bil1, bil2);
        print('Hasil Perkalian dari $bil1 * $bil2 = $jawab');
      } else if (pilihan == '4') {
        jawab = k.bagi(bil1, bil2);
        print('Hasil Pembagian dari $bil1 / $bil2 = $jawab ');
      } else {
        print('Pilihan tidak Valid');
        return;
      }
    } catch (e) {
      print('Terjadi error : $e');
    }
    stdout.write('Ingin Memakai Kalkulator lagi? (Y/T) : ');
    String? pilih = stdin.readLineSync();
    if (pilih == 't' || pilih == 'T') {
      print('Terima Kasih Sudah Pake Kalkulator, goodbye :)');
      break;
    }
  }
}
