import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elon Musk Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elon Musk Portfolio'),
      ),
      body: ListView(
        children: [
          _buildCompanyCard(
            'SpaceX',
            'Revolutionizing space transportation and exploration',
            'assets/images/spacex.jpg',
          ),
          _buildCompanyCard(
            'Tesla',
            'Leading the charge in electric vehicles and renewable energy',
            'assets/images/tesla.jpg',
          ),
          _buildCompanyCard(
            'X Corp.',
            'Investing in and developing solutions for artificial intelligence, infrastructure, and transportation',
            'assets/images/xcorp.jpg',
          ),
          _buildCompanyCard(
            'Boring Company',
            'Infrastructure and transportation solutions',
            'assets/images/boring_company.jpg',
          ),
          _buildCompanyCard(
            'xAI',
            'Investing in and developing solutions for artificial intelligence',
            'assets/images/xai.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyCard(String title, String description, String imagePath) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
            subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}