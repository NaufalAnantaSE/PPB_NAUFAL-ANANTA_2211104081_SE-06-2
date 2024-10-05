import 'dart:io';

bool cekBilanganPrima(int angka) {
  if (angka <= 1) {
    return false;
  }
  
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  
  return true;
}

void main() {
  stdout.write('Masukkan bilangan: ');
  int? bilangan = int.parse(stdin.readLineSync()!);

  if (cekBilanganPrima(bilangan)) {
    print('bilangan prima');
  } else {
    print('bukan bilangan prima');
  }
}
