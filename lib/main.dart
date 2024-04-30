import 'package:flutter/material.dart';

void main() {
  runApp(GraphicDesignApp());
}

class GraphicDesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jasa Desain Grafis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jasa Desain Grafis'), // Sesuaikan dengan judul yang sama
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman Home.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 8.0,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0), // Mengubah warna teks label dan ikon yang dipilih menjadi putih
        unselectedItemColor: const Color.fromARGB(255, 22, 22, 22).withOpacity(0.5), // Mengubah warna teks label dan ikon yang tidak dipilih menjadi putih dengan transparansi 50%
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        // Memberikan jarak antara teks label dan ikon
        selectedLabelStyle: TextStyle(fontSize: 14.0),
        unselectedLabelStyle: TextStyle(fontSize: 14.0),
      ),
    );
  }
}
