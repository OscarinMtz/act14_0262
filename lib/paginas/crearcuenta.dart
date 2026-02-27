import 'package:flutter/material.dart';
import 'menuconcuenta.dart';

class CrearCuentaPage extends StatelessWidget {
  const CrearCuentaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          const Center(child: Text('HOME', style: TextStyle(color: Colors.white, fontSize: 18))),
          const SizedBox(width: 5),
          const Icon(Icons.menu, color: Colors.black, size: 30),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity, color: Colors.blue, padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Center(child: Text('ELECTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          ),
          const SizedBox(height: 20),
          const Text('CREATE ACCOUNT', style: TextStyle(fontSize: 25)),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('email'),
              const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
              const SizedBox(height: 10),
              const Text('Name'),
              const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
              const SizedBox(height: 10),
              const Text('Password'),
              const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
              const SizedBox(height: 30),
              Center(child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const MenuConCuentaPage())),
                  child: const Text('CREAR', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              )),
            ]),
          ),
        ]),
      ),
    );
  }
}