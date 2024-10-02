void main(){
  //Statement Control
  // if else
  var open = 8;
  var close = 17;
  var now = 13;

  if (now >= open && now <= close) {
    print("Open now!");
  } else if (now == 13) {
    print("istirahat sholat jumat");
  } else {
    print("Sorry, we're closed.");
  } // End if

// condition ? true : false
  var toko = now > open ? 'Toko buka' : 'Toko tutup';
  print(toko);

  var nilai = 'b';

// switch case
  switch (nilai) {
    case 'a':
      print('Nilai yang sangat bagus');
      break;
    case 'b':
      print('Nilai jelek');
      break;
    case 'c':
      print('Nilai sangat jelek');
    default:
      print('Nilai default');
  }
}
