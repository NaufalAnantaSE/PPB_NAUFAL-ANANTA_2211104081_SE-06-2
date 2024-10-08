import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Judul Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pantai Widara Payung',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Gambar Tempat Wisata
              Image.network(
                'https://disporapar.cilacapkab.go.id/wp-content/uploads/2020/09/Samudera_mandiri_01-300x200.jpg', 
                height: 200,
                fit: BoxFit.cover, // Mengatur tampilan gambar agar lebih baik
              ),
              SizedBox(height: 16),
              // Deskripsi Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Pantai Widara Payung terletak di Kecamatan Binangun, Kabupaten Cilacap, '
                  'dan merupakan salah satu destinasi wisata pantai yang menarik. Pantai ini '
                  'menawarkan hamparan pasir hitam yang luas serta ombak yang cukup besar, '
                  'sehingga cocok untuk berselancar. Pantai ini juga dikelilingi oleh pepohonan '
                  'kelapa yang memberikan suasana asri dan nyaman bagi pengunjung. '
                  'Selain itu, pengunjung juga dapat menikmati pemandangan matahari terbenam yang '
                  'memukau di ujung pantai. Fasilitas di pantai ini juga sudah cukup lengkap, '
                  'termasuk warung makan, tempat parkir, dan area bermain anak-anak.',
                  textAlign: TextAlign.justify, // Meratakan teks
                ),
              ),
              SizedBox(height: 16),

              // Tombol Kunjungi
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kode tindakan di sini!
                },
                child: Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
