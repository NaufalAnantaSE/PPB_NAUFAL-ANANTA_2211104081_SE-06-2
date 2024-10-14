import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black87), // Mengganti bodyText2 dengan bodyMedium
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wisata Banyumas'),
          backgroundColor: Colors.green.shade700,
        ),
        body: ListView(
          padding: EdgeInsets.all(12),
          children: [
            wisataCard(
              'Alun-Alun Purwokerto',
              'https://radarbanyumas.disway.id/upload/2021/03/Renovasi-Tahap-II-Alun-Alun-Purwokerto-Dialokasikan-Anggaran-16-Miliar.jpg',
              'Alun-Alun Purwokerto adalah ruang publik yang menjadi pusat keramaian. Tempat ini dikelilingi oleh bangunan penting seperti Masjid Agung, berbagai kafe, dan restoran.',
            ),
            wisataCard(
              'Museum Bank Rakyat Indonesia',
              'https://purwokertokita.com/wp-content/uploads/2017/08/museum-BRI-purwokerto-384x220.jpg',
              'Museum ini menampilkan sejarah perbankan di Indonesia dan menjadi tempat wisata edukasi yang menarik. Pengunjung dapat belajar tentang sejarah Bank Rakyat Indonesia (BRI), yang didirikan di Purwokerto.',
            ),
            wisataCard(
              'Baturraden Adventure Forest',
              'https://atourin.obs.ap-southeast-3.myhuaweicloud.com/images/destination/banyumas/baturraden-adventure-forest-profile1672684727.jpeg?x-image-process=image/resize,p_100,limit_1/imageslim',
              'Baturraden Adventure Forest menawarkan pengalaman petualangan di alam terbuka, termasuk aktivitas seperti hiking, flying fox, dan berkemah. Dikelilingi oleh hutan pinus yang indah, cocok untuk pencinta alam.',
            ),
            wisataCard(
              'Curug Gede',
              'https://elsotel.id/wp-content/uploads/2021/12/blog-3-1.jpg',
              'Curug Gede adalah air terjun yang terletak di kawasan Baturraden. Memiliki aliran air yang jernih dan pemandangan alam yang masih alami.',
            ),
            wisataCard(
              'Telaga Kumpe',
              'https://asset-2.tstatic.net/banyumas/foto/bank/images/telaga-kumpe-desa-gunung-lurah-kecamatan-cilongok-banyumas.jpg',
              'Telaga Kumpe adalah telaga alami yang tenang dan asri, terletak tidak jauh dari pusat kota Banyumas. Cocok untuk memancing atau sekedar menikmati pemandangan.',
            ),
          ],
        ),
      ),
    );
  }

  Widget wisataCard(String nama, String imageUrl, String deskripsi) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 6,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                nama,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol diklik
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Kunjungi Sekarang'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
