import 'package:flutter/material.dart';
import 'crearcuenta.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: Column(
        children: [
          Container(
            width: double.infinity, color: Colors.blue, padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Center(child: Text('ELECTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          ),
          const SizedBox(height: 20),
          const Text('LOGIN', style: TextStyle(fontSize: 40)),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Name'),
              const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
              const SizedBox(height: 20),
              const Text('Password'),
              const TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder())),
              const SizedBox(height: 30),
              Center(child: Column(children: [
                const Text('¿No tienes cuenta?'),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const CrearCuentaPage())),
                  child: const Text('CREAR', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
              ])),
            ]),
          ),
        ],
      ),
    );
  }
}