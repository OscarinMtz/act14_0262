import 'package:flutter/material.dart';
import 'login.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const LoginPage())),
            child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          const Icon(Icons.menu, color: Colors.black, size: 30),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // ELECTRO ARRIBA
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Center(
              child: Text('ELECTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
            ),
          ),
          // SECTIONS ABAJO
          Container(
            width: double.infinity,
            color: const Color(0xFFE3F2FD), 
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('section'), Text('section'), Text('section')],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                _buildSeccion('Ratones', 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=200'),
                _buildSeccion('telefonos', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=200'),
                _buildSeccion('Audifonos', 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=200'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeccion(String titulo, String url) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (i) => Container( // Más imágenes
              width: 90, height: 90, margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
              child: Image.network(url, fit: BoxFit.cover),
            )),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}