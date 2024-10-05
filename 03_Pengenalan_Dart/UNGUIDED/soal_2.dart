import 'dart:io';

void main() {
  stdout.write('Masukkan panjang piramida: ');
  int? panjang = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= panjang; i++) {
    // Mencetak spasi
    for (int j = 0; j < panjang - i; j++) {
      stdout.write(' ');
    }

    // Mencetak bintang
    for (int k = 0; k < (2 * i - 1); k++) {
      stdout.write('*');
    }

    // Pindah ke baris berikutnya
    print('');
  }
}
