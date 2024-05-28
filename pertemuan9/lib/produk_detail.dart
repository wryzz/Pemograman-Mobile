import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  final String? stok;
  final String? pabrikan;

  const ProdukDetail({
    super.key,
    this.kodeProduk,
    this.namaProduk,
    this.harga,
    this.stok,
    this.pabrikan,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Produk',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "No Barcode Produk = ${widget.kodeProduk}",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          Text("Nama Produk = ${widget.namaProduk}",
              style: TextStyle(fontSize: 24)),
          Text(
              "Harga Produk = Rp ${widget.harga.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.').replaceAll('.', '.')}",
              style: TextStyle(fontSize: 24)),
          Text("Stok Produk = ${widget.stok} Biji",
              style: TextStyle(fontSize: 24)),
          Text("Pabrikan = ${widget.pabrikan}", style: TextStyle(fontSize: 24)),
          _tombolKembali(context)
        ],
      ),
    );
  }
}

Widget _tombolKembali(BuildContext context) {
  return ElevatedButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: const Text('Kembali'),
  );
}
