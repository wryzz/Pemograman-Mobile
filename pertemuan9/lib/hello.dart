import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'flutter pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Row(
        children: [
          Text('Saya '),
          Text('Belajar '),
          Text('Flutter '),
          Text('di UDB')
        ],
      ),
    );
  }
}
