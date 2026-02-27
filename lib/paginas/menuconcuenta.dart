import 'package:flutter/material.dart';
import 'menuconpestana.dart';

class MenuConCuentaPage extends StatelessWidget {
  const MenuConCuentaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          const Center(child: Text('OscarMtz', style: TextStyle(color: Colors.white, fontSize: 18))),
          const SizedBox(width: 5),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black, size: 30),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const MenuConPestanaPage())),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(children: [
        Container(
          width: double.infinity, color: Colors.blue, padding: const EdgeInsets.symmetric(vertical: 15),
          child: const Center(
            child: Text('ELECTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)), // TEXTO BLANCO
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              _grid('Ratones', 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=200'),
              _grid('telefonos', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=200'),
              _grid('Computadoras', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=200'),
              _grid('Audifonos', 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=200'),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _grid(String t, String u) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(t, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      const SizedBox(height: 5),
      GridView.count(
        shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8,
        children: List.generate(3, (i) => Container(
          decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
          child: Image.network(u, fit: BoxFit.cover),
        )),
      ),
      const SizedBox(height: 20),
    ]);
  }
}