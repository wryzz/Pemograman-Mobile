import 'package:flutter/material.dart';
import 'package:pertemuan9/produk_detail.dart';

final TextEditingController _kodeProdukTextBoxController =
    TextEditingController();
final TextEditingController _namaProdukTextBoxController =
    TextEditingController();
final TextEditingController _hargaProdukTextBoxController =
    TextEditingController();
final TextEditingController _stokTextBoxController = TextEditingController();
final TextEditingController _pabrikanTextBoxController =
    TextEditingController();

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Form Produk',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _textboxstokProduk(),
            _textboxpabrikanProduk(),
            _tombolSimpan(context)
          ],
        ),
      ),
    );
  }
}

Widget _textboxKodeProduk() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: "No Barcode Produk",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      controller: _kodeProdukTextBoxController,
    ),
  );
}

Widget _textboxNamaProduk() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      controller: _namaProdukTextBoxController,
    ),
  );
}

Widget _textboxHargaProduk() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: "Harga Produk",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      controller: _hargaProdukTextBoxController,
    ),
  );
}

Widget _textboxstokProduk() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: "Stok Produk",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      controller: _stokTextBoxController,
    ),
  );
}

Widget _textboxpabrikanProduk() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: "Pabrikan",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      controller: _pabrikanTextBoxController,
    ),
  );
}

_tombolSimpan(BuildContext context) {
  return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {
        String kodeProduk = _kodeProdukTextBoxController.text;
        String namaProduk = _namaProdukTextBoxController.text;
        int harga = int.parse(_hargaProdukTextBoxController.text);
        String stok = _stokTextBoxController.text;
        String pabrikan = _pabrikanTextBoxController.text;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                  stok: stok,
                  pabrikan: pabrikan,
                )));
      },
      child: const Text('Simpan'));
}
