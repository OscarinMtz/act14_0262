import 'package:flutter/material.dart';
import 'pedidos.dart';

class MenuConPestanaPage extends StatelessWidget {
  const MenuConPestanaPage({super.key});

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
          IconButton(icon: const Icon(Icons.menu, color: Colors.black, size: 30), onPressed: () => Navigator.pop(context)),
          const SizedBox(width: 15),
        ],
      ),
      body: Stack(children: [
        // FONDO SIN SECTIONS
        Column(children: [
          Container(
            width: double.infinity, color: Colors.blue, padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Center(child: Text('ELECTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))),
          ),
          const Expanded(child: Center(child: Icon(Icons.shopping_bag_outlined, size: 100, color: Colors.black12))),
        ]),
        // PESTAÑA
        Positioned(
          right: 0, top: 0, bottom: 0,
          child: Container(
            width: 220,
            decoration: const BoxDecoration(color: Colors.white, border: Border(left: BorderSide(color: Colors.black, width: 1.5))),
            child: Column(children: [
              const SizedBox(height: 30),
              const Text('INICIO', style: TextStyle(fontSize: 20, color: Colors.black54)),
              const SizedBox(height: 20),
              const Text('Carrito', style: TextStyle(fontSize: 20, color: Colors.black54)),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const PedidosPage())),
                child: const Text('pedidos', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              const Text('Cerrar Sesión', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 18)),
            ]),
          ),
        ),
      ]),
    );
  }
}