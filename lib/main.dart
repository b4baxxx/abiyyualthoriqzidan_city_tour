import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Tour'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 16), // Jarak atas
            ImageGallery(),
            SizedBox(height: 16), // Jarak antar-widget
            Tagline(),
            SizedBox(height: 16), // Jarak antar-widget
            Description(),
          ],
        ),
      ),
    );
  }
}

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/id/162/300/200',
              height: 300,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16), // Jarak antar gambar
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/id/164/300/200',
              height: 300,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16), // Jarak antar gambar
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/id/174/300/200',
              height: 300,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Tagline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Explore, Enjoy, Experience.',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Explore the charm of our city\'s hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city.',
      textAlign: TextAlign.center,
    );
  }
}
