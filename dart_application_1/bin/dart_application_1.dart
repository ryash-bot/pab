import 'dart:io';
import 'package:dart_application_1/kalkulator.dart';

void main() {
  var kalkulator = Kalkulator();
  bool lanjut = true;

  while (lanjut) {
    try {
      stdout.write("Masukkan bilangan pertama: ");
      double a = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan bilangan kedua: ");
      double b = double.parse(stdin.readLineSync()!);

      print("\nPilih operasi:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");

      stdout.write("Masukkan pilihan (1-4): ");
      int pilihan = int.parse(stdin.readLineSync()!);

      double hasil;
      switch (pilihan) {
        case 1:
          hasil = kalkulator.tambah(a, b);
          break;
        case 2:
          hasil = kalkulator.kurang(a, b);
          break;
        case 3:
          hasil = kalkulator.kali(a, b);
          break;
        case 4:
          hasil = kalkulator.bagi(a, b);
          break;
        default:
          throw Exception("Pilihan tidak valid!");
      }

      print("Hasil: $hasil");

    } catch (e) {
      print("Terjadi kesalahan: $e");
    }

    stdout.write("\nApakah ingin menghitung lagi? (Y/T): ");
    String? ulang = stdin.readLineSync();
    if (ulang == null || ulang.toUpperCase() == "T") {
      lanjut = false;
      print("Program selesai. Terima kasih!");
    }
  }
}