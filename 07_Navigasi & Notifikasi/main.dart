import 'package:flutter/material.dart';
import 'models/product.dart';
import 'pages/productdetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      name: "Leather Wallet",
      description:
          "Dompet kulit asli yang elegan dan tahan lama, cocok untuk segala kesempatan.",
      price: 350.000,
      imageUrl:
          "https://i.pinimg.com/564x/2d/b7/b2/2db7b2f1e825e3c1fa855a16852a5a10.jpg",
    ),
    Product(
      id: 2,
      name: "Vintage Sunglasses",
      description:
          "Kacamata hitam bergaya vintage untuk melindungi mata Anda dari sinar UV.",
      price: 450.000,
      imageUrl:
          "https://i.pinimg.com/564x/b6/89/4d/b6894de31c2f3fd238418ad1d6ccb15e.jpg",
    ),
    Product(
      id: 3,
      name: "Smart Watch",
      description:
          "Jam tangan pintar dengan fitur kesehatan dan pelacakan kebugaran.",
      price: 900.000,
      imageUrl:
          "https://i.pinimg.com/564x/c9/92/80/c99280cabc39ed2d1622bdc2fefdff55.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Shopping'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 243, 117, 0)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Tampilkan 2 kolom
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75, // Rasio lebar dan tinggi grid
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(product: product),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        product.imageUrl,
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\Rp${product.price.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 243, 117, 0)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
