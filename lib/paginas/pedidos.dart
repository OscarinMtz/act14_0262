import 'package:flutter/material.dart';
import 'menu.dart';

class PedidosPage extends StatelessWidget {
  const PedidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          const Center(child: Text('OscarMtz', style: TextStyle(color: Colors.white, fontSize: 18))),
          const SizedBox(width: 5),
          const Icon(Icons.menu, color: Colors.black, size: 30),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('MIS\nPEDIDOS', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 1.1)),
          const SizedBox(height: 20),
          _item('ABR 21, 2026, 18:55', 'Calle patria #2020'),
          const SizedBox(height: 15),
          _item('Jul 04, 2024, 12:10', 'Calle patria #2020'),
          const SizedBox(height: 40), // Espacio antes del botón
          Center(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // BOTÓN NARANJA
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c) => const MenuPage()), (r) => false),
                child: const Text('MENÚ', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          const Spacer(), // Ahora el botón no está hasta el fondo
        ]),
      ),
    );
  }

  Widget _item(String f, String d) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
      child: Row(children: [
        const Icon(Icons.description, size: 30),
        const SizedBox(width: 10),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(f, style: const TextStyle(fontWeight: FontWeight.bold)), Text(d)])
      ]),
    );
  }
}