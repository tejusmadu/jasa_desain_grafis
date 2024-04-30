import 'package:flutter/material.dart';

void main() {
  runApp(GraphicDesignApp());
}

class GraphicDesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graphic Design Services',
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
        title: Text('Graphic Design Services'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman untuk melihat portofolio desain
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PortfolioPage()),
                );
              },
              child: Text('Lihat Portofolio'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman untuk meminta desain kustom
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RequestDesignPage()),
                );
              },
              child: Text('Minta Desain Kustom'),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio Desain'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman portofolio desain.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

class RequestDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minta Desain Kustom'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Isi formulir di sini untuk meminta desain kustom.',
              style: TextStyle(fontSize: 20.0),
            ),
            // Tambahkan formulir untuk meminta desain kustom di sini
          ],
        ),
      ),
    );
  }
}
