import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Barang')),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Irfan'),
              subtitle: Text('085172000366'),
            ),
          )
        ],
      ),
    );
  }
}
