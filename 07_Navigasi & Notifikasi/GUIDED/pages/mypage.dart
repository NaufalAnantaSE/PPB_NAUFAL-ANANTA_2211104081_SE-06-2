import 'package:flutter/material.dart';
import 'package:pertemuan7/models/product.dart';
import 'package:pertemuan7/pages/detailpage.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      nama: 'mouse gaming',
      harga: 300000,
      gambarUrl:
          'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
      deskripsi: 'mouse gaming terbaik di kelasnya',
    ),
    Product(
      id: 2,
      nama: 'keyboard gaming',
      harga: 500000,
      gambarUrl:
          'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1',
      deskripsi: 'keyboard gaming anti ghosting',
    ),
    Product(
      id: 3,
      nama: 'headset gaming',
      harga: 400000,
      gambarUrl:
          'https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg',
      deskripsi: 'headset terbaik sejagat gaming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mypage'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 167, 173),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.gambarUrl, width: 70, height: 70),
            title: Text(product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp. ${product.harga}'),
                Text('Deskripsi: ${product.deskripsi}'),
              ],
            ),
            onTap: () {
              print("tap tap to earn");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Detailpage(
                            data: Icon(Icons.notifications_outlined),
                          )));
            },
          );
        },
      ),
    );
  }
}
